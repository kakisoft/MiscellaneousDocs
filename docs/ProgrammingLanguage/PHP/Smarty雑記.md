```php
{* これはコメントです *}


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
ワンライナーで書く方法

<input type='checkbox' name='auth_gen'  id='auth_gen'  value='1' {if $userParameters["auth_gen"]  == "1"}checked{/if}>一般";

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

{if $preBodyDivideId == 1}
    {* 入力内容にエラーがある *}
{/if}


{if $userParameters['auth_gen'] == true}

{else}}

{/if}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

{php}
echo "<pre>";
echo "This will be sent to browserrrrrrrrr<br>";
echo {$name};
var_dump({$name});
echo "</pre>";
{/php}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

{if $name eq 'Fred'}
    Welcome Sir.
{elseif $name eq 'Wilma'}
    Welcome Ma'am.
{else}
    Welcome, whatever you are.
{/if}

=============================================================================

{if count($_POST) > 0}
    count_POST_OVER 0
{/if}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

```

