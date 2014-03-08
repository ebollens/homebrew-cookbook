original_content = File.read "/etc/paths"
original_content.gsub! /(^|\s)\/usr\/local\/bin(\n|$)/, ""
new_content = "/usr/local/bin\n#{original_content}"

file "/etc/paths" do
  content new_content
  action :create
end
