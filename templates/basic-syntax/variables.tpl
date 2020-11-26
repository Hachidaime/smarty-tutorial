<!-- prettier-ignore -->
{$foo}        // menampilkan variabel sederhana (bukan array/objek)
{$foo[4]}     // menampilkan elemen ke-5 dari array yang diindeks nol
{$foo.bar}    // menampilkan nilai key "bar" dari sebuah array, mirip dengan PHP $foo['bar']
{$foo.$bar}   // menampilkan nilai key variabel dari sebuah array, mirip dengan PHP $foo[$bar]
{$foo->bar}   // menampilkan properti objek "bar"
{$foo->bar()} // menampilkan nilai kembali dari metode objek "bar"
{#foo#}       // menampilkan variabel file config "foo"
{$smarty.config.foo} // sinonim dengan {#foo#}
{$foo[bar]}   // sintaks hanya valid dalam section loop, lihat {section}
{assign var=foo value='baa'}{$foo} //  menampilkan "baa", lihat {assign}

Banyak kombinasi lain diperbolehkan
{$foo.bar.baz}
{$foo.$bar.$baz}
{$foo[4].baz}
{$foo[4].$baz}
{$foo.bar.baz[4]}
{$foo->bar($baz,2,$bar)} // melewati parameter
{"foo"}       // nilai statis diperbolehkan

{* tampilkan variabel server "SERVER_NAME" ($_SERVER['SERVER_NAME'])*}
{$smarty.server.SERVER_NAME}

Matematika dan tag embedding:
{$x+$y}                             // akan menampilkan jumlah x dan y.
{assign var=foo value=$x+$y}        // di dalam attributes 
{$foo[$x+3]}                        // sebagai index sebuah array
{$foo={counter}+3}                  // tag di dalam tag
{$foo="this is message {counter}"}  // tag dalam string yang dikutip ganda

Mendefinisikan Array:
{assign var=foo value=[1,2,3]}
{assign var=foo value=['y'=>'yellow','b'=>'blue']}
{assign var=foo value=[1,[9,8],3]}   // bisa bersarang

Tugas variabel pendek:
{$foo=$bar+2}
{$foo = strlen($bar)}               // fungsi dalam assignment
{$foo = myfunct( ($x+$y)*3 )}       // sebagai parameter fungsi
{$foo.bar=1}                        // tetapkan ke elemen array tertentu
{$foo.bar.baz=1}                    
{$foo[]=1}                          // menambahkan ke array

Sintaks "dot" Smarty (catatan: tertanam {} digunakan untuk mengatasi ambiguitas):
{$foo.a.b.c}        =>  $foo['a']['b']['c'] 
{$foo.a.$b.c}       =>  $foo['a'][$b]['c']         // dengan indeks variabel
{$foo.a.{$b+4}.c}   =>  $foo['a'][$b+4]['c']       // dengan ekspresi sebagai indeks
{$foo.a.{$b.c}}     =>  $foo['a'][$b['c']]         // dengan indeks bersarang

Sintaks seperti PHP, alternatif dari sintaks "dot":
{$foo[1]}             // akses normal
{$foo['bar']}
{$foo['bar'][1]}
{$foo[$x+$x]}         // indeks mungkin berisi ekspresi apa pun
{$foo[$bar[1]]}       // indeks bersarang
{$foo[section_name]}  // smarty akses {section}, bukan akses array!

Variable variables:
$foo                     // normal variabel
$foo_{$bar}              // nama variabel yang mengandung variabel lain
$foo_{$x+$y}             // nama variabel yang mengandung ekspresi
$foo_{$bar}_buh_{$blar}  // nama variabel dengan banyak segmen
{$foo_{$x}}              // akan menampilkan variabel $foo_1 jika $x memiliki nilai 1.

Object chaining:
{$object->method1($x)->method2($y)}

Akses fungsi PHP langsung:
{time()}
