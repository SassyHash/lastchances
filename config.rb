#!/usr/bin/env ruby 

require "yaml"

module Configuration
  @@root_dir     = File.expand_path File.dirname(__FILE__)
  @@config_dir   = File.expand_path File.join(@@root_dir, 'config')
  @@app_dir      = File.expand_path File.join(@@root_dir, 'app')

  @@db_config    = YAML.load_file File.join(@@config_dir, 'database.yml')
  @@settings     = YAML.load_file File.join(@@config_dir, 'settings.yml')
  @@secrets      = YAML.load_file File.join(@@config_dir, 'secrets.yml')

  def self.settings
    @@settings
  end

  def self.secrets 
    @@secrets
  end 

  def self.db_config 
    @@db_config
  end 

end 
