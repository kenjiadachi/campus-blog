Tweet.create(:title => 'Github-flowで実践する初心者でも取り組みやすいGitワークフロー', :text => "
                    <h2>Git-flowとは？</h2>

                    <p>
                        Git/Githubを利用して複数人で開発を進める場合、どのようにして進めるかを予め決めて運用しないといけません。
                        オープンソースの開発などでは、開発に加わりたい人がGithubにあるコードをForkし、CloneしてからPull Requestを送り、それが良いものであればマージするという手法をとっています。
                        しかし、実際の会社などでのプロジェクトでは非効率であり、役割分担などがしにくいため、Forkをしない方法でやる必要があります。
                    </p>

                    <h2>Git-flowの問題点</h2>

                    <p>
                        Gitでよく使用されるワークフローとして、Git-flowとGithub-flowというものがあります。
                        Git-flowは古くから使われている手法で、Github-flowは2011年にGithub社員のScott Chacon氏がブログで紹介してから広まったものです。Scott Chacon氏は、git-flowは素晴らしいと思うと答えている一方で、ほとんどの開発者や開発チームが実際に必要とするよりも複雑すぎやしないか、という問題点を指摘しています。
                    </p>

                    <h2>Github-flowの流れ</h2>

                    <p>
                        gitflow上がGithub-flowの流れの図解です。
                        流れは非常にシンプルで、基本的には追加機能などごとにmasterブランチからブランチを作成し、実装が終わったらMASTERブランチにマージします。
                        より詳細な流れとしては、
                        1. MASTERブランチはいつでもリリース  / デプロイできる状態にしておく
                        2. 新たな機能追加などを行うときはMASTERブランチからブランチを作成する
                        3. 新たに作成したブランチに対してcommitし、定期的にPushする
                        4. コードレビューや助けてほしい時にはPull Requestをしてやりとりする
                        5. コードレビューが終了して問題無いと確認されたらMASTERブランチにマージする
                        6. MASTERブランチへマージ後、すぐにデプロイ（リリース）する
                        です。
                    </p>
                ", :user_id => 1)
Tweet.create(:title => 'メタリックなテキストやボタンを作成するチュートリアルまとめ', :text => "
                    <h2>どれもtrueかfalseかnilを判定するメソッドです。</h2>
                    <p>
                    nil?とempty?はrubyのメソッドであり、blank?とpresent?はrailsで拡張されたメソッドです。なので、blank?とpresent?はRailsでしか使えません。
                    まず１つ１つの意味をみていきましょう。
                    </p>

                    <h2>nil?</h2>
                    <p>
                    nilなので何も存在してない（配列や文字列などの入れ物もない）場合にtrueになります。
                    nilの場合のみtrueを返し、それ以外はfalseを返します。
                    例えば、以下の場合は入れ物があるので、falseです。
                    </p>

                    <h2>empty?</h2>
                    <p>
                    入れ物があり、それが空の場合はtrueです。
                    空の文字列や空の配列の場合にtrueを返します。nilに対して呼び出すとNoMethodErrorが発生します。
                    </p>

                    <h2>blank?</h2>
                    <p>
                    nil?、もしくはempty?のどちらかがTrueであればTrue、nil? or empty? のようなメソッド。
                    </p>

                    <h2>まとめ</h2>
                    <p>
                    何もないか確認したいときはnil?
                    入れ物があって空か確認したいときはempty?
                    nil?、もしくはempty?を確認したければblank?
                    !blank?と書くならpresent?
                    </p>
                ", :user_id => 2)
