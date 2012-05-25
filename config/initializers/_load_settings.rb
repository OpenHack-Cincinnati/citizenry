# Load application settings from config/settings.yml
file = Rails.root.join('config', 'settings.yml')
settings = ERB.new(File.read(file)).result
settings_yml = HashWithIndifferentAccess.new(YAML.load(settings))

merged_settings = settings_yml['common']
merged_settings.deep_merge!(settings_yml[Rails.env]) if settings_yml.has_key?(Rails.env)

SETTINGS = merged_settings
