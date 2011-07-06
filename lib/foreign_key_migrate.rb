require "active_record/connection_adapters/mysql2_adapter.rb"

module ForeignKeyMigrate
  def add_foreign_key(srctab, srccol, desttab, destcol, options = {})
    key_name = options[:name] || "fk_#{srctab}_#{srccol}_#{desttab}_#{destcol}"

    execute "ALTER TABLE #{srctab}" +
            " ADD CONSTRAINT #{key_name}" +
            " FOREIGN KEY(#{srccol}) REFERENCES #{desttab}(#{destcol})" +
            " ON DELETE #{options[:nullify] ? 'SET NULL' : 'CASCADE'}"
  end

  def drop_foreign_key(srctab, srccol, desttab, destcol, options = {})
    key_name = options[:name] || "fk_#{srctab}_#{srccol}_#{desttab}_#{destcol}"

    execute "ALTER TABLE #{srctab} DROP FOREIGN KEY #{key_name}"
    execute "ALTER TABLE #{srctab} DROP INDEX #{key_name}"
  end
end

ActiveRecord::ConnectionAdapters::Mysql2Adapter.send(:include, ForeignKeyMigrate)

# examples
# on delete cascade
# add_foreign_key :books, :user_id, :users, :id
# on delete nullify
# add_foreign_key :books, :user_id, :users, :id, :nullify => true
