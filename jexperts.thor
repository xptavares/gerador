class Jexperts < Thor::Group
  include Thor::Actions

  # Define arguments and options
  argument :name

  def self.source_root
    File.dirname(__FILE__)
  end

  def create_xhtml_listagem
    template('templates/xxx-listagem.tt', "jexperts/xhtml/#{name}/#{name}-listagem.xhtml")
  end

  def create_xhtml_filtro
    template('templates/xxx-cadastro.tt', "jexperts/xhtml/#{name}/#{name}-cadastro.xhtml")
  end

  def create_xhtml_filtro
    template('templates/xxx-filtro.tt', "jexperts/xhtml/#{name}/#{name}-filtro.xhtml")
  end

  def create_service
    template('templates/xxxService.tt', "jexperts/java/#{name}/service/#{name.capitalize}Service.java")
  end

  def create_business
    template('templates/xxxBusiness.tt', "jexperts/java/#{name}/business/#{name.capitalize}Business.java")
  end

  def create_mb_listagem
    template('templates/xxxListagemMB.tt', "jexperts/java/#{name}/mb/#{name.capitalize}Listagem.java")
  end

  def create_mb
    template('templates/xxxMB.tt', "jexperts/java/#{name}/mb/#{name.capitalize}MB.java")
  end

  def create_validator
    template('templates/xxxValidator.tt', "jexperts/java/#{name}/mb/#{name.capitalize}Validator.java")
  end

end