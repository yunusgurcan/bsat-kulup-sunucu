# Bilişim Kulübü Sunucusu

**Hazırlayan:** Yunus Mert Gürcan  
**Yayın portu:** 8071  
**Ortam:** WSL Ubuntu, Nginx

## Yapılan adımlar

1. Makinenin disklerini, çalışma dizinini, işlemci sayısını ve ağ adreslerini inceledim. Ubuntu kök diskinde yaklaşık 955 GB boş alan ve 8 işlemci çekirdeği gördüm.
2. `kulup` grubunu ve `/srv/kulup` klasörünü oluşturdum. Klasörün sahibi kendi kullanıcım, grubu `kulup`, izinleri `drwxrwxr-x`.
3. Nginx'i kurup 8071 portunda `/srv/kulup` klasörünü yayınlayacak şekilde ayarladım. Yapılandırma testinden sonra servisi başlattım ve açılışta etkinleştirdim.
4. `duyuru.sh` betiğiyle `duyurular.txt` dosyasından web sayfası ürettim. Cron görevi sayfayı her 5 dakikada bir güncelliyor; eklenen dördüncü duyurunun otomatik göründüğünü doğruladım.
5. `ss` ile 8071 portunun dinlendiğini, `curl -I` ile HTTP yanıtının `200 OK` olduğunu gördüm. Sayfayı Windows tarayıcısında da açtım.
6. Nginx servis ve erişim günlüklerini inceledim. Tarayıcının ana sayfa isteği `200` yanıtı aldı.
7. `/srv/kulup` klasörünü tarihli `.tar.gz` arşivine yedekledim ve arşivde `kulup/index.html` bulunduğunu doğruladım.

## Yapay zekâ kullanımı

ChatGPT'den ödev adımlarındaki komutları hazırlamak, hata mesajlarını yorumlamak ve README metnini düzenlemek için yardım aldım. Komutları kendi Ubuntu ortamımda çalıştırıp çıktılarını kontrol ettim.
