SELECT users.*
FROM users
INNER JOIN notification_settings ON notification_settings.user_id = users.id
WHERE notification_settings.enabled = false
