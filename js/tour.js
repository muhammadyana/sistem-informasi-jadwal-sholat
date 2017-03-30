// Define the tour!
  var tour = {
    id: "simajid",
    steps: [
      {
        title: "Jam Saat ini",
        content: "Menampilkan Jam Saat Ini Secara Realtime",
        target: "clock",
        placement: "bottom",
        bubbleWidth: 500,

        arrowOffset: 60

      },
      {
        title: "Jeda Waktu Solat",
        content: "Jeda waktu sholat ke sholat berikutnya, jika satu jam lagi menuju waktu sholat maka akan ada reminder",
        target: "itung",
        width: 500,
        placement: "right"
      },
      {
        title: "Countdown waktu iqomah",
        content: "Menampilkan Hitung mundur dari jeda adzan ke iqomah",
        target: "iqomah",
        placement: "right"
      },
       {
        title: "Video-video",
        content: "Menampilkan video-video kajian yang sudah berlalu bagi jamaah yang berhalangan hadir dapat menonton ulang pada video ini",
        target: "vidio",
        width: 400,

        placement: "left"
      },
      {
        title: "Tombol Start",
        content: "Jika ingin menghitung waktu mundur maka silahkan pencet tombol IQOMAH",
        target: "btnstart",
        placement: "top"
      },
      {
        title: "Tombol Reset",
        content: "Jika hitungan sudah NOL maka tekan tombol RESET untuk mengembalikan ke waktu awal",
        target: "btnreset",
        placement: "top"
      },
      
      {
        title: "KAJIAN",
        content: "Menampilkan jadwal kajian-kajian yang ada pada minggu ini",
        target: "kajian",
        placement: "top"
      },
      {
        title: "Jadwal Sholat",
        content: "Menampilkan jadwal shalat sesuai daerah masjid",
        target: "s",
        placement: "top"
      }
    ],
    showPrevButton: true,
    showSkip: true,
    smoothScroll: true,
    scrollTopMargin: 200,
     onEnd: function() {
      swal("Selamat telah menyelsaikan manual!", "Selamat Menggunakan Aplikasi Kami :) ", "success");
    }
  };
  // Start the tour!
  hopscotch.startTour(tour);
      