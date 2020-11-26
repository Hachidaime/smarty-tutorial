{* Smarty comment, tidak ada dalam keluaran yang dikompilasi *}
<html>
  <head>
    <title>{$title}</title>
  </head>
  <body>
    {* komentar Smarty satu baris lainnya *}
    <!-- Komentar HTML yang dikirim ke browser -->

    {* Komentar Smarty 
      multiline ini
      tidak dikirim ke browser
    *}

    {*********************************************************
      Blok komentar multiline dengan credit block
        @ author:         bg@example.com
        @ maintainer:     support@example.com
        @ para:           var that sets block style
        @ css:            the style output
    **********************************************************}

    {* File header dengan logo utama dan lainnya  *}
    {include file='header.tpl'}

    {* Catatan pengembang: variabel $includeFile ditetapkan dalam skrip foo.php  *}
    <!-- Menampilkan blok konten utama -->
    {include file=$includeFile}
    
    {* blok <select> ini mubazir *}
    {*
    <select name="company">
      {html_options options=$vals selected=$selected_id}
    </select>
    *}
    
    <!-- Tampilkan header dari affiliate dinonaktifkan -->
    {* $affiliate|upper *}
    
    {* Anda tidak dapat nest comments *}
    {*
    <select name="company">
      {* <option value="0">-- none -- </option> *}
      {html_options options=$vals selected=$selected_id}
    </select>
    *}
  </body>
</html>
