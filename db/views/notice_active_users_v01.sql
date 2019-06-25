SELECT users.*
FROM users
LEFT OUTER JOIN notification_settings ON notification_settings.user_id = users.id
WHERE notification_settings.id IS NULL OR notification_settings.enabled = true
