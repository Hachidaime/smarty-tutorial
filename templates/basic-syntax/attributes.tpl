<!-- prettier-ignore -->
{include file="header.tpl"}
{include file="header.tpl" nocache}  // setara dengan nocache=true
{include file="header.tpl" attrib_name="attrib value"}
{include file=$includeFile}
{include file=#includeFile# title="My Title"}
{assign var=foo value={counter}}  // plugin result
{assign var=foo value=substr($bar,2,5)}  // PHP function result
{assign var=foo value=$bar|strlen}  // menggunakan modifier
{assign var=foo value=$buh+$bar|strlen}  // ekspresi yang lebih kompleks
{html_select_date display_days=true}
{mailto address="smarty@example.com"}

<select name="company_id">
  {html_options options=$companies selected=$company_id}
</select>
