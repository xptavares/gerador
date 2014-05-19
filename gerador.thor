class Gerador < Thor::Group
  include Thor::Actions

  # Define arguments and options
  argument :name
  class_option :wizard, :default => false

  def self.source_root
    File.dirname(__FILE__)
  end

  def create_xhtml_listagem
    template('templates/xxx-listagem.tt', "gerados/xhtml/#{name}/#{name}-listagem.xhtml")
  end

  def create_xhtml_cadastro
    if options[:wizard]
      template('templates/xxx-cadastro-wizard.tt', "gerados/xhtml/#{name}/#{name}-cadastro.xhtml")
    else 
      template('templates/xxx-cadastro.tt', "gerados/xhtml/#{name}/#{name}-cadastro.xhtml")
    end
  end

  def create_xhtml_filtro
    template('templates/xxx-filtro.tt', "gerados/xhtml/#{name}/#{name}-filtro.xhtml")
  end

  def create_service
    if options[:wizard]
      template('templates/xxxWizardService.tt', "gerados/java/#{name}/service/#{name.capitalize}Service.java")
    else 
      template('templates/xxxService.tt', "gerados/java/#{name}/service/#{name.capitalize}Service.java")
    end
  end

  def create_business
    if options[:wizard]
      template('templates/xxxWizardBusiness.tt', "gerados/java/#{name}/business/#{name.capitalize}Business.java")
    else 
      template('templates/xxxBusiness.tt', "gerados/java/#{name}/business/#{name.capitalize}Business.java")
    end
    
  end

  def create_mb_listagem
    template('templates/xxxListagemMB.tt', "gerados/java/#{name}/mb/#{name.capitalize}Listagem.java")
  end

  def create_mb
    if options[:wizard]
      template('templates/xxxWizardMB.tt', "gerados/java/#{name}/mb/#{name.capitalize}MB.java")
    else 
      template('templates/xxxMB.tt', "gerados/java/#{name}/mb/#{name.capitalize}MB.java")
    end
  end

  def create_validator
    template('templates/xxxValidator.tt', "gerados/java/#{name}/mb/#{name.capitalize}Validator.java")
  end

  def create_translator
    ##TODO
  end

end