#!/usr/bin/env ruby

def error(*msg)
  msg.each { |m| puts "Decrypt Error: #{m}" }
  exit 1
end

def log(*msg)
  msg.each { |m| puts "Decrypt: #{m}" }
end

def require_or_error(gem_name)
  error("plist gem is not installed, please do ") unless require(gem_name)
end

require_or_error 'json'
require_or_error 'plist'

keydir = ENV.fetch("EJSON_KEYS_PATH", "~/.ejson_keys")
ejson_path = ENV.fetch("EJSON_SECRETS_FILE", "secrets.ejson")
ejson_full_path = File.exist?(ejson_path) && File.absolute_path(ejson_path)

built_products_dir = ENV.fetch("BUILT_PRODUCTS_DIR")
app_product = "#{ENV.fetch("PRODUCT_NAME")}.app"
secrets_plist = "Secrets.plist"
secrets_plist_path = [built_products_dir, app_product, secrets_plist].join("/")

error("#{ejson_full_path} does not exist") unless ejson_full_path
error("Key directory #{keydir} not found") unless Dir.exists? keydir

log("Found secrets at #{ejson_full_path}")

# Decrypt secrets
secrets = `ejson -keydir #{keydir} decrypt #{ejson_full_path}`.strip

# Parse secrets
json_secrets = begin
                 JSON.parse(secrets)
               rescue JSON::ParserError
                 error("#{ejson_path} file is not parseable. Please check it and confirm it is in the proper format")
               end

json_secrets.delete("_public_key")

File.write(secrets_plist_path, json_secrets.to_plist)
