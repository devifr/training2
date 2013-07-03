class SharedResouceController < ApplicationController
  before_filter :prepare_resource, except: [:new, :index, :create]

  def index
    prepare_resource(class_model.all, instance_name.pluralize)
  end

  def new
    prepare_resource(class_model.new)
  end

  def create
    (prepare_resource(class_model.create(params[:article]))
    after_save(:new)
  end

  def update
    instance_variable.update_attributes(params[:article])
    after_save(:edit)
  end

  def destroy
     instance_variable.destroy
  end

  private
    def prepare_resource(operation = nil, resource_name="")
      resource_name = instance_name if resource_name.blank?
      operation = class_model.find(params[:id]) if operation.blank?
      instance_variable_set("@#{resource_name}", operation)
    end 

    def after_save(failed_response)
      respond_to do |format|
        if @article.errors.present?
          format.html {render failed_response}
        else
          format.html {redirect_to :index}
        end
      end
    end

    def instance_name
      class_model.class.name.downcase
    end

    def instance_variable
      instance_variable_get("@#{instance_name}")
    end

    def instance_variables
      instance_name.pluralize
    end

    def instance_variables
      instance_variable_get("@#{instance_variables}")
    end
end


# Example Usage:
class CommentsController < SharedResourceController
  def class_model; Comment end
end

class ArticlesController < SharedResourceController
  def class_model; Article end
end

#link inheretence 
"https://github.com/josevalim/inherited_resources"