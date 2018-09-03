```php

{debug}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
{* これはコメントです *}


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
【 ワンライナーで書く方法 】

{if $userParameters["auth_gen"]  == "1"}checked{/if}

<input type='checkbox' name='auth_gen'  id='auth_gen'  value='1' {if $userParameters["auth_gen"]  == "1"}checked{/if}>一般";


<input type="radio" name="use_lang_cd" id="use_lang_cd" value="0" {if $userParameters["use_lang_cd"] != "1"}checked{/if}>日本語
<input type="radio" name="use_lang_cd" id="use_lang_cd" value="1" {if $userParameters["use_lang_cd"] == "1"}checked{/if}>英語

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

{if $preBodyDivideId == 1}
    {* 入力内容にエラーがある *}
{/if}


{if $userParameters['auth_gen'] == true}

{else}}

{/if}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
【 標準出力 】

{php}
echo "<pre>";
echo "This will be sent to browserrrrrrrrr<br>";
echo {$name};
var_dump({$name});
echo "</pre>";
{/php}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
【 if 分岐 】

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
【 foreach 】

<ul>
{foreach from=$myArray item=foo}
    <li>{$foo}</li>
{/foreach}
</ul>

```

