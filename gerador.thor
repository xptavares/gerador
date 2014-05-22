class Gerador < Thor::Group
  include Thor::Actions

  # Define arguments and options
  argument :name
  class_option :wizard, :default => false

  def self.source_root
    File.dirname(__FILE__)
  end

  def create_xhtml_listagem
    template('templates/xhtml/xxx-listagem.tt', "gerados/xhtml/#{name}/#{name}-listagem.xhtml")
  end

  def create_xhtml_cadastro
    if options[:wizard]
      template('templates/xhtml/xxx-cadastro-wizard.tt', "gerados/xhtml/#{name}/#{name}-cadastro.xhtml")
    else 
      template('templates/xhtml/xxx-cadastro.tt', "gerados/xhtml/#{name}/#{name}-cadastro.xhtml")
    end
  end

  def create_xhtml_filtro
    template('templates/xhtml/xxx-filtro.tt', "gerados/xhtml/#{name}/#{name}-filtro.xhtml")
  end

  def create_service
    if options[:wizard]
      template('templates/java/service/xxxWizardService.tt', "gerados/java/#{name}/service/#{name.capitalize}Service.java")
    else 
      template('templates/java/service/xxxService.tt', "gerados/java/#{name}/service/#{name.capitalize}Service.java")
    end
  end

  def create_business
    if options[:wizard]
      template('templates/java/business/xxxWizardBusiness.tt', "gerados/java/#{name}/business/#{name.capitalize}Business.java")
    else 
      template('templates/java/business/xxxBusiness.tt', "gerados/java/#{name}/business/#{name.capitalize}Business.java")
    end
    
  end

  def create_mb_listagem
    template('templates/java/mb/xxxListagemMB.tt', "gerados/java/#{name}/mb/#{name.capitalize}Listagem.java")
  end

  def create_mb
    if options[:wizard]
      template('templates/java/mb/xxxWizardMB.tt', "gerados/java/#{name}/mb/#{name.capitalize}MB.java")
    else 
      template('templates/java/mb/xxxMB.tt', "gerados/java/#{name}/mb/#{name.capitalize}MB.java")
    end
  end

  def create_validator
    template('templates/java/utils/xxxValidator.tt', "gerados/java/#{name}/utils/#{name.capitalize}Validator.java")
  end

  def create_translator
    template('templates/java/utils/xxxTranslator.tt', "gerados/java/#{name}/utils/#{name.capitalize}Translator.java")
  end

end