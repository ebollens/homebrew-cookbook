include_recipe "homebrew::cask"

node['homebrew']['casks'].each do |cask, enabled|
  homebrew_cask cask do
    action enabled ? :cask : :uncask
  end
end
