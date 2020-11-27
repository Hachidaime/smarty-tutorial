<!-- prettier-ignore -->
{config_load file="colors.conf"}

{include file="header.tpl"}
{insert file="banner_ads.tpl" title="My Site"}

{if $logged_in}
  Welcome,
<!-- prettier-ignore -->
<span style="color: {#fontColor#;}" >{$name}!</span>
<!-- prettier-ignore -->
{else} 
  hi, {$name} 
{/if} 
{include file="footer.tpl"}
