node['homebrew']['taps'].each do |tap, enabled|
  homebrew_tap tap do
    action enabled ? :tap : :untap
  end
end
