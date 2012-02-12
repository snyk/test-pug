class String
  def slugify
    self.downcase.gsub(/&/, 'and').gsub(/\s+/, '-').gsub(/[^a-z0-9-]/, '')
  end
end
