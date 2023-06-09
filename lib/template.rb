class Template
  def self.qna_prompt(embeddings:)
    template = File.read(path("qna_prompt.erb"))
    ERB.new(template).result(binding)
  end

  def self.agent_prompt
    template = File.read(path("agent_prompt.erb"))
    ERB.new(template).result(binding)
  end

  def self.agent_embeddings(embeddings:)
    template = File.read(path("agent_embeddings.erb"))
    ERB.new(template).result(binding)
  end

  def self.path(file)
    File.join(File.dirname(__FILE__), "../templates", file)
  end
end
