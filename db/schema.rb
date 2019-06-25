# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_25_042848) do

  create_table "notification_settings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "enabled", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notification_settings_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "notification_settings", "users"

  create_view "active_users", sql_definition: <<-SQL
      select `users`.`id` AS `id`,`users`.`name` AS `name`,`users`.`status` AS `status`,`users`.`created_at` AS `created_at`,`users`.`updated_at` AS `updated_at` from `users` where (`users`.`status` = 0)
  SQL
  create_view "deleted_users", sql_definition: <<-SQL
      select `users`.`id` AS `id`,`users`.`name` AS `name`,`users`.`status` AS `status`,`users`.`created_at` AS `created_at`,`users`.`updated_at` AS `updated_at` from `users` where (`users`.`status` = 99)
  SQL
  create_view "notice_active_users", sql_definition: <<-SQL
      select `users`.`id` AS `id`,`users`.`name` AS `name`,`users`.`status` AS `status`,`users`.`created_at` AS `created_at`,`users`.`updated_at` AS `updated_at` from (`users` left join `notification_settings` on((`notification_settings`.`user_id` = `users`.`id`))) where (isnull(`notification_settings`.`id`) or (`notification_settings`.`enabled` = TRUE))
  SQL
  create_view "notice_disabled_users", sql_definition: <<-SQL
      select `users`.`id` AS `id`,`users`.`name` AS `name`,`users`.`status` AS `status`,`users`.`created_at` AS `created_at`,`users`.`updated_at` AS `updated_at` from (`users` join `notification_settings` on((`notification_settings`.`user_id` = `users`.`id`))) where (`notification_settings`.`enabled` = FALSE)
  SQL
end
