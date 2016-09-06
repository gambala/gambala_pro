class AddPageFieldsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :page_title, :string
    add_column :projects, :page_subtitle, :string
    add_column :projects, :page_cover_class, :string
    add_column :projects, :page_mockup_image, :string
  end
end
