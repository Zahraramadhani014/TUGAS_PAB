# 📱 TUGAS_PAB 📱

---

<h1 align="center">🛒 Shopping Cart Enhancement "Mini E-Commerce Shopping Cart dengan Provider"
</h1> 

---

## 👩‍🎓 Identitas Mahasiswa
Nama: Zahraturramadhani  
NIM: 2409116014  
Mata Kuliah: Pemrograman Aplikasi Bergerak  
Dosen: Anton Prafanto, S.Kom., M.T.

---

## 📌 Deskripsi Project
Project ini merupakan implementasi aplikasi Shopping Cart berbasis Flutter yang menerapkan konsep state management menggunakan package Provider. 

Aplikasi ini dirancang untuk mensimulasikan sistem keranjang belanja pada platform e-commerce sederhana, di mana pengguna dapat menambahkan produk ke dalam keranjang, mengatur jumlah pembelian, menghapus produk, serta melihat total harga secara otomatis berdasarkan perubahan data yang terjadi.

Dalam pengembangannya, aplikasi ini memanfaatkan pola ChangeNotifier sebagai mekanisme pengelolaan state agar setiap perubahan data pada keranjang (seperti penambahan item atau perubahan quantity) dapat langsung memperbarui tampilan antarmuka secara real-time tanpa perlu melakukan refresh manual. 

Implementasi ini bertujuan untuk memahami perbedaan antara local state (setState) dan shared state (Provider), serta bagaimana menerapkan manajemen state yang lebih terstruktur, scalable, dan sesuai dengan praktik pengembangan aplikasi Flutter modern.

Aplikasi Mini E-Commerce Shopping Cart ini memungkinkan pengguna untuk:
- Menambahkan produk ke keranjang
- Mengatur jumlah produk (+/-)
- Menghapus produk dari keranjang
- Melihat total harga otomatis
- Melakukan checkout dengan form validasi

---

## ✅ Features Checklist

- [x] Product model
- [x] Cart model with ChangeNotifier
- [x] Product list page
- [x] Add to cart button
- [x] Cart badge showing item count
- [x] Cart page with all items
- [x] Increase/decrease quantity
- [x] Remove item button
- [x] Total price calculation
- [x] Empty cart message
- [x] Search / Filter produk
- [x] Filter berdasarkan kategori
- [x] Checkout page (Order summary + form)

---

## ✅ Fitur WAJIB
- Add to cart from product list
- Show cart items dengan quantity
- Update quantity (+/-)
- Remove items from cart
- Display total price correctly

---

## ⭐ Fitur BONUS
- Search / Filter produk 
- Filter berdasarkan kategori
- Checkout Page (Order Summary + Form)

---

## 📸 Screenshot Aplikasi

### Product List

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/96b04acc-8adb-41b9-baa0-b8b643630b1f" />


### Cart Page

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/0b38a260-2783-49cf-ba57-739442e8166a" />


### Checkout Page

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/d702fbb5-fd6d-444d-8201-386107aaf710" />


---

## ~ Penjelasan Alur Program  ~

1. Ketika pengguna klik ikon **Run** di pojok kanan atas (ikon segitiga), aplikasi akan mulai dijalankan.
   
   Pada saat dijalankan, Flutter akan mengeksekusi file `main.dart` terlebih dahulu sebagai titik awal program. Di dalam file ini, aplikasi dibungkus dengan `ChangeNotifierProvider` yang berfungsi untuk menyediakan state CartModel ke seluruh bagian aplikasi.

   ><img width="1600" height="1000" alt="image" src="https://github.com/user-attachments/assets/208934d4-ab73-451f-b794-d0efd7733541" />

   Setelah itu, aplikasi akan menampilkan halaman utama yaitu `ProductListPage`. Dari halaman ini, pengguna bisa mulai berinteraksi dengan aplikasi seperti menambahkan produk ke keranjang dan melihat perubahan jumlah item secara langsung.

   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/54f8ab91-d71c-4d51-b813-4989aae4e1ab" />

2. Untuk menambahkan produk ke dalam keranjang (cart), pengguna cukup menekan tombol **Add** yang ada di bawah masing-masing produk.

   ><img width="1600" height="1000" alt="image" src="https://github.com/user-attachments/assets/14506b4a-5553-46b9-bbf6-42e2c6a21e93" />

   Setelah tombol Add diklik, jumlah item pada ikon keranjang langsung bertambah sehingga pengguna dapat mengetahui bahwa produk berhasil ditambahkan tanpa harus membuka halaman keranjang terlebih dahulu.
      
   ><img width="1600" height="1000" alt="image" src="https://github.com/user-attachments/assets/80d38986-b8f2-45aa-a1a2-c4093c2a2f29" />

3. Untuk melihat produk apa saja yang sudah ditambahkan ke keranjang, pengguna cukup menekan ikon keranjang yang berada di pojok kanan atas.

   ><img width="1600" height="1000" alt="image" src="https://github.com/user-attachments/assets/80d38986-b8f2-45aa-a1a2-c4093c2a2f29" />

   Setelah ikon tersebut diklik, aplikasi akan menampilkan halaman Cart (keranjang). Di halaman ini, pengguna bisa melihat daftar produk yang sudah dipilih lengkap dengan nama produk, harga, jumlah (quantity),
   serta total harga masing-masing item. Pada halaman ini juga pengguna bisa menambah atau mengurangi jumlah produk, menghapus produk dari keranjang, dan melihat total keseluruhan belanja di bagian bawah.

   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/7b8b2dc1-e59a-45eb-9976-59e030334535" />
   
   
   a. Jika pengguna menambah jumlah produk
   >Jika pengguna ingin menambah jumlah produk yang sudah ada di keranjang, cukup menekan tombol tanda tambah (+) yang berada di samping angka quantity. Setelah tombol tersebut ditekan, jumlah produk akan langsung bertambah. Harga total untuk produk tersebut juga otomatis ikut berubah sesuai dengan jumlah yang dipilih. Di bagian bawah halaman, total keseluruhan belanja juga akan ikut ter-update tanpa perlu refresh atau pindah halaman. Jadi semua perubahan bisa langsung terlihat saat itu juga.
   >
   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/69a5aa3d-d17f-400c-a441-6e99af8f05f2" />
   
   b. Jika pengguna mengurangi jumlah produk
   >Jika pengguna menekan tombol minus (-), maka jumlah produk akan berkurang satu. Produk tersebut tetap ada di dalam keranjang selama jumlahnya masih lebih dari nol. Harga total untuk produk tersebut juga otomatis menyesuaikan dengan jumlah terbaru. Begitu juga dengan total keseluruhan belanja di bagian bawah halaman, nilainya akan langsung berubah mengikuti update quantity. Dengan begitu, pengguna bisa dengan mudah mengatur jumlah barang sesuai kebutuhan tanpa harus menghapus produk terlebih dahulu.
   >
   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/7b8b2dc1-e59a-45eb-9976-59e030334535" />

   c. Jika pengguna ingin menghapus produk
   >Jika pengguna ingin menghapus produk dari keranjang, cukup menekan ikon tempat sampah yang ada di sebelah kanan produk. Setelah ikon tersebut diklik, produk akan langsung hilang dari daftar keranjang. Total harga di bagian bawah juga otomatis berkurang sesuai dengan produk yang dihapus. Dengan fitur ini, pengguna bisa dengan mudah membatalkan pilihan barang tanpa perlu mengurangi quantity satu per satu.
   >
   ><img width="1600" height="1000" alt="image" src="https://github.com/user-attachments/assets/a9daabf4-34f5-455b-8e44-9ac0e2e257a6" />
   >
   >Jika semua produk sudah dihapus atau belum ada produk yang ditambahkan, maka halaman Cart akan menampilkan pesan bahwa keranjang masih kosong. Pada tampilan ini terdapat ikon keranjang dan tulisan “Your cart is empty” sebagai penanda bahwa belum ada barang yang dipilih. Di bawahnya juga tersedia tombol “Continue Shopping”.
   >
   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/2127ebea-f5a2-4d72-b710-b1d62fee0346" />
   >
   >Ketika pengguna menekan tombol “Continue Shopping”, aplikasi akan langsung mengarahkan kembali ke halaman Product List sehingga pengguna bisa mulai memilih produk lagi.
   >
   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/489c4036-066d-46a6-affe-fb1009efbbc0" />

4. Setelah pengguna selesai memilih produk, langkah berikutnya adalah melakukan checkout. Untuk itu, pengguna cukup menekan tombol **Checkout** yang berada di bagian paling bawah halaman keranjang.
   >
   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/7fd30567-cdd1-4be3-b4ca-4089b025c1c4" />
   >
   >Setelah tombol tersebut diklik, aplikasi akan menampilkan halaman Checkout. Pada halaman ini, pengguna bisa melihat kembali ringkasan pesanan (Order Summary) yang berisi nama produk, jumlah barang, dan total harga yang harus dibayar.
   >
   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/661433fe-a211-48e2-98fe-68078efbf021" />
   >
   >Di bawah ringkasan tersebut terdapat form yang harus diisi, yaitu Full Name dan Address. Pengguna perlu mengisi data tersebut terlebih dahulu sebelum melanjutkan proses pemesanan. Setelah semua data terisi, pengguna dapat menekan tombol **Place Order**. Jika form sudah terisi dengan benar, maka pesanan akan diproses dan keranjang akan kembali kosong.
   >
   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/bf0b2481-2db2-4849-99a1-13716b145738" />
   >
   >Setelah pengguna menekan tombol Place Order, akan muncul notifikasi bahwa pesanan berhasil diproses. Setelah itu, pengguna akan otomatis diarahkan kembali ke halaman Product List. Pada tahap ini, keranjang sudah kembali kosong karena pesanan sebelumnya sudah selesai diproses. Notifikasi yang muncul berfungsi sebagai konfirmasi bahwa checkout berhasil dilakukan, sehingga pengguna tahu bahwa transaksi sudah berhasil tanpa perlu mengecek ulang ke halaman keranjang.
   >
   ><img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/2b34d8bd-09ad-4efc-be5d-d92c96546d32" />

## 📌 Catatan
Project ini dibuat untuk memenuhi tugas "Shopping Cart Enhancement". Source code project tersedia pada branch master.
