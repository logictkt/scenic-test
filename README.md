# README

## User
ユーザーテーブル

* 名前
* アクティブ状況

## ActiceUser
アクティブなユーザーのみを管理するview

## DeletedUser
アクディブでないユーザーのみを管理するview

## NotificationSetting
通知を管理する

* アクティブ状況

存在しない OR enabled が true なものは、通知する

## NoticeActiveUser
通知するアクティブなユーザーを管理するview

## NoticeDisabledUser
通知するアクディブでないユーザーを管理するview

***


### 感想
* migrateで管理できるのすごく便利
* 処理が散らばるのでまとめるのがしんどい
* 更新の時どうするのが、シンプルかつわかりやすいだろう
