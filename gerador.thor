class Gerador < Thor::Group
  include Thor::Actions

  # Define arguments and options
  argument :name
  argument :packege
  class_option :wizard, :default => false

  def self.source_root
    File.dirname(__FILE__)
  end

  def create_xhtml_listagem
    template('templates/xhtml/xxx-listagem.tt', "gerados/#{name}/xhtml/#{name}-listagem.xhtml")
  end

  def create_xhtml_cadastro
    if options[:wizard]
      template('templates/xhtml/xxx-cadastro-wizard.tt', "gerados/#{name}/xhtml/#{name}-cadastro.xhtml")
    else 
      template('templates/xhtml/xxx-cadastro.tt', "gerados/#{name}/xhtml/#{name}-cadastro.xhtml")
    end
  end

  def create_xhtml_filtro
    template('templates/xhtml/xxx-filtro.tt', "gerados/#{name}/xhtml/#{name}-filtro.xhtml")
  end

  def create_service
    if options[:wizard]
      template('templates/java/service/xxxWizardService.tt', "gerados/#{name}/java/service/#{name.capitalize}Service.java")
    else 
      template('templates/java/service/xxxService.tt', "gerados/#{name}/java/service/#{name.capitalize}Service.java")
    end
  end

  def create_business
    if options[:wizard]
      template('templates/java/business/xxxWizardBusiness.tt', "gerados/#{name}/java/business/#{name.capitalize}Business.java")
    else 
      template('templates/java/business/xxxBusiness.tt', "gerados/#{name}/java/business/#{name.capitalize}Business.java")
    end
    
  end

  def create_mb_listagem
    template('templates/java/mb/xxxListagemMB.tt', "gerados/#{name}/java/mb/#{name.capitalize}ListagemMB.java")
  end

  def create_mb
    if options[:wizard]
      template('templates/java/mb/xxxWizardMB.tt', "gerados/#{name}/java/mb/#{name.capitalize}MB.java")
    else 
      template('templates/java/mb/xxxMB.tt', "gerados/#{name}/java/mb/#{name.capitalize}MB.java")
    end
  end

  def create_validator
    template('templates/java/mb/xxxValidator.tt', "gerados/#{name}/java/mb/#{name.capitalize}Validator.java")
  end

  def create_translator
    template('templates/java/utils/xxxTranslator.tt', "gerados/#{name}/java/utils/#{name.capitalize}Translator.java")
  end

  def create_properties
    template('templates/xhtml/xxxMessages.tt', "gerados/#{name}/xhtml/#{name}Messages.properties")
  end

  def create_dto_filtro
    template('templates/java/dto/xxxFiltroDTO.tt', "gerados/#{name}/java/dto/#{name.capitalize}FiltroDTO.java")
  end

  def create_entity_desativacao
    template('templates/java/entity/xxxDesativacao.tt', "gerados/#{name}/java/entity/#{name.capitalize}Desativacao.java")
  end

  def create_entity_situacao_enum
    template('templates/java/entity/Situacaoxxx.tt', "gerados/#{name}/java/entity/Situacao#{name.capitalize}.java")
  end

end