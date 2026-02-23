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

1. Ketika kita klik ikon **Run** di pojok kanan atas (ikon segitiga), aplikasi akan mulai dijalankan.
   
   Pada saat dijalankan, Flutter akan mengeksekusi file `main.dart` terlebih dahulu sebagai titik awal program. Di dalam file ini, aplikasi dibungkus dengan `ChangeNotifierProvider` yang berfungsi untuk menyediakan state CartModel ke seluruh bagian aplikasi.

   <img width="1600" height="1000" alt="image" src="https://github.com/user-attachments/assets/208934d4-ab73-451f-b794-d0efd7733541" />

   Setelah itu, aplikasi akan menampilkan halaman utama yaitu `ProductListPage`. Dari halaman ini, user bisa mulai berinteraksi dengan aplikasi seperti menambahkan produk ke keranjang dan melihat perubahan jumlah item secara langsung.

   <img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/54f8ab91-d71c-4d51-b813-4989aae4e1ab" />

    

   




## 📌 Catatan
Project ini dibuat untuk memenuhi tugas "Shopping Cart Enhancement".
