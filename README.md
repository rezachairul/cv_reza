# LaTeX CV – Modular Structure

Repository ini berisi Curriculum Vitae (CV) berbasis **LaTeX** yang sedang dalam proses refactoring dari **single-file** menjadi **struktur modular** (multi-file) agar lebih rapi, mudah dirawat, dan scalable.

Saat ini, seluruh isi CV masih berada dalam satu file (`main.tex`), namun struktur folder sudah disiapkan untuk pemisahan konten ke beberapa file terpisah.

---

## Tujuan Repository

- Mengelola CV menggunakan LaTeX
- Memisahkan **konten**, **data**, dan **style**
- Memudahkan update CV tanpa mengganggu layout
- Lebih clean untuk version control (Git)

---

## Struktur Folder
```plaintext
📦CV_Reza_Chairul_Manam
 ┣ 📂.git
 ┣ 📂assets
 ┃ ┗ 📂image
 ┃ ┃ ┣ 📜foto_reza_chairul.jpg
 ┃ ┃ ┗ 📜foto_reza_chairul.png
 ┣ 📂data
 ┃ ┗ 📜personal.tex
 ┣ 📂sections
 ┃ ┣ 📜education.tex
 ┃ ┣ 📜experience.tex
 ┃ ┣ 📜language.tex
 ┃ ┣ 📜organization.tex
 ┃ ┣ 📜profile.tex
 ┃ ┣ 📜projects.tex
 ┃ ┗ 📜skills.tex
 ┣ 📂styles
 ┃ ┣ 📜commands.tex
 ┃ ┗ 📜cv.cls
 ┣ 📜README.md
 ┗ 📜main.tex
 ```

---

## �� Penjelasan File & Folder

### `main.tex`
File utama (entry point) untuk kompilasi LaTeX.  
Ke depannya hanya berisi:
- konfigurasi document class & package
- pemanggilan file data, style, dan section menggunakan `\input{}`

---

### `sections/`
Berisi konten CV yang dipisah per bagian:

| File | Isi |
|-----|----|
| `profile.tex` | Header & ringkasan profil |
| `education.tex` | Riwayat pendidikan |
| `experience.tex` | Pengalaman kerja |
| `organization.tex` | Pengalaman organisasi |
| `projects.tex` | Proyek |
| `skills.tex` | Hard skill & soft skill |

> Saat ini folder ini **sudah dapat digunakan**, seluruh isi sudah di update di `main.tex`.

---

### `data/`
Berisi data statis yang sering dipakai ulang:
- nama
- email
- nomor telepon
- link sosial media

Tujuan: **cukup ubah data tanpa menyentuh layout**.

---

### `styles/`
Berisi pengaturan tampilan:
- `commands.tex` → custom command/macro
- `cv.cls` → custom document class (opsional, tahap lanjut)

---

### `assets/`
Aset visual seperti:
- foto profil
- ikon sosial media
- logo tambahan

---

## Cara Compile

```bash
pdflatex main.tex