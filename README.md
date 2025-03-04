# README

## 環境構築
```
$ bundle install --without=production
$ bin/rails db:setup
$ yarn install
$ bin/webpack
$ bin/rails s
```

## 事業をエンジニアリングしよう提案編の回答は以下に記述してください

### **選択した事業側の課題**
直近一年間で、2回以上もくもく会に参加してくれた人は利用者全体の1%のみ。もくもく会で気の合う仲間を見つけられなかったのではないか？

### **提案内容**
女性どうこうより、現状のユーザーが満足していないという点が一番大きな課題。
ユーザーのニーズは「プログラミング仲間を作りたいという」点に対し、もくもく会だけの場合、主催者の運営や雰囲気づくりに委ねられ、交流が生まれにくい可能性がある。
そのため、もくもく会に付随して、のみのみ会やガヤガヤ会、ギブギブ会など交流を生む会を開催できるように変更を加える。
また、機能面ではないが、1%のユーザーがなぜ利用しているかインタビューを実施したり、運営が主催するイベントを月1回企画し、主催や参加へのハードルを下げる施作も必要。


### **実装方針**
- もくもく会作成画面にて、「登録」ボタンの横に「交流会を追加」ボタンを設置。
- 「交流会を追加」ボタンを押すとウィザード形式で画面遷移し、会の種類(プルダウンでのみのみ会、ガヤガヤ会、ギブギブ会など)、概要欄を記入→登録
- 「このもくもく会に参加する」ボタンを選択型にし、「もくもく会に参加する」「もくもく＋交流会に参加する」と参加者に選択してもらう