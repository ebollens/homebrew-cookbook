include_recipe "homebrew::cask"

node['homebrew']['casks'].each do |cask|
  homebrew_cask cask
end
