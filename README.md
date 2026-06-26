# DevSecOps - Automatizovano Skeniranje Ranjivosti (GitHub Actions)

Ovaj repozitorijum predstavlja praktični deo grupnog seminarskog rada iz oblasti **DevSecOps** na temu: *"Implementacija Shift Left bezbednosnog koncepta kroz CI/CD pipeline"*.

Projekat demonstrira kako automatizovani skeneri u ranoj fazi razvoja mogu da presretnu loše konfiguracije i bezbednosne propuste pre nego što kod stigne do produkcije.

## 🛡️ Integrisani Alati (Skeniranje)

Unutar `.github/workflows/security-pipeline.yml` fajla implementirana su tri bezbednosna alata:
1. **Gitleaks** - Skeniranje koda i Git istorije u potrazi za hardkodovanim tajnama (lozinke, API ključevi).
2. **Checkov** - Statistička analiza Infrastrukture kao Koda (IaC) za Terraform konfiguracione fajlove (`main.tf`).
3. **Trivy** - Skener ranjivosti za Docker kontejnere i Dockerfile konfiguracije.

## 📊 Faze Projekta

* **Faza 1 (Ranjivi kod):** Inicijalno slanje koda sa namernim propustima (hardkodovani AWS ključevi, otvoren S3 bucket, zastarela Ubuntu slika i root privilegije). Pipeline uspešno blokira build (Crveni krug).
* **Faza 2 (Sanacija):** Uklanjanje tajni, prelazak na bezbednu `scratch` Docker sliku i zaključavanje IaC konfiguracije. Pipeline uspešno prolazi (Zeleni krug).

## 👥 Autori (Studenti)
* **Đurađ Milačić** - 2024/0021
* **Živojin Milić** - 2024/0119
* **Miloš Mitrović** - 2024/0137
