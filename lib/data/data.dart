class Book {
  String title,
      writer,
      url,
      image,
      description;
  int pages;
  double rating;

  Book(
      this.title, this.writer, this.url, this.image,this.description, this.rating, this.pages);
}

final List<Book> books = [
  Book('صحيح البخاري', 'أبو عبد الله محمد بن إسماعيل بن إبراهيم بن المغيرة بن بردزبة البخاري (194-256هـ) .',
      'asset/pdfs/17774.epub', 'img/book2.png','"اسم الكتاب الذي طبع به ووصف أشهر طبعاته" \n قد كثرت طبعات الصحيح جدًا، بشكل يصعب معه حصرها، ونكتفي هنا بذكر أبرز هذه الطبعات، وقد طبعت كلها تقريبًا تحت اسم:\n\n "صحيح البخاري"\n \n 1 - طبع بالمطبعة الأميرية بالقاهرة، سنة 1286هـ، وهذه أقدم الطبعات التي وقفنا عليها.\n 2 - طبع بمطبعة بولاق 1296هـ، وبهامشه تقييدات وشروح من شرح القسطلاني.\n 3 - طبع بمصر في المطبعة الأميرية، سنة 1313هـ، وكرر طبعه 1314هـ، وهذه الطبعة على نسخة الحافظ اليونيني.\n 4 - طبع بعناية محمد أبو الفضل إبراهيم ورفاقه، وهي طبعة مرقمة على ترقيمات فتح الباري في الكتب والأبواب والأحاديث، والأجزاء والصفحات، صدرت عن مكتبة النهضة الحديثة بمكة، سنة 1377هـ، ثم في الرياض 1404هـ.\n\n "توثيق نسبة الكتاب إلى مؤلفه"\n\n لعله من العبث أن يحاول الإنسان أن يثبت الثوابت، فإن أحدًا لا يحتاج إلى إثبات أن الشمس طالعة، حين تكون هي في وسط السماء، في وضح النهار، وحر الظهيرة، في صيف قائظ، وهذا الكتاب أوضح من الشمس وأنور، وأقوى منها وأظهر، ويستدل به لا له.\n فقد سار عبر الزمان وخلال القرون، وعرفه الخاصة والعامة، حتى أصبح لا يجهله إلا جاهل، وأصبح لاسمه مهابة في القلوب، ولإسناد شيء إليه قطع بصحته، وإخراس ألسنة المعاندين، بعدما انعقد إجماع الأمة على نسبته للمؤلف وتلقيه بالقبول جيلًا بعد جيل.\n وصف الكتاب ومنهجه أراد المؤلف رحمه الله أن يجمع كتابًا مسندًا مختصرًا مشتملًا على الصحيح المسند من حديث رسول الله وسننه وأيامه دفعه إلى ذلك ما بينه بقوله:\n "كنا عند إسحاق بن راهويه فقال: لو جمعتم كتاباً مختصراً لصحيح سنة رسول الله ، فوقع ذلك في قلبي فأخذت في جمع الجامع الصحيح" فقام بانتقاء هذه المادة من ستمائة ألف حديث، واستغرق ذلك منه ستة عشرة سنة.\n وقد تحصل له من خلال نقده لهذه المرويات الضخمة، بشروطه التي اشترطها (7167) نصًا مسندًا تمثل أصح الصحيح لأنه قد أضاف إلى ما اشترط في حد الصحيح تحقق اللقاء بين كل راو ومن فوقه, والتزم هذا.\n ثم رتب هذه المادة ترتيبًا عجبًا في كتب تندرج تحتها أبواب، وتحت كل باب عدد من النصوص يقل أو يكثر حسبما يتفنن المؤلف في إيراد ذلك.\n وقد انعقد إجماع الأمة على أن التراجم التي وضعها الإمام البخاري في كتابه نمت عن فهم عميق ونظر دقيق في معاني النصوص، حتى اشتهر بين أهل العلم قولهم:\n "فقه البخاري في تراجمه" .\n وتناول المؤلف في هذا الكتاب سائر أحكام الشرع؛ العملية والاعتقادية.\n وقد أتت مادة الكتاب مقسمة على (97) كتابًا بدأها بكتاب بدأ الوحي، فكتاب الإيمان، فكتاب العلم، ثم دخل في كتب العبادات الوضوء..إلخ، وختم الكتاب بكتاب التوحيد يسبقه كتاب الاعتصام بالسنة.\n وهو بهذا الترتيب العجيب يشير إلى أن الوحي هو طريق الشرع، والإيمان به عن علم مع تطبيق الأحكام التي أتى بها الشرع، يفضي بالمسلم إلى تمسكه بالسنة، وتحصيله للتوحيد الحق.\n وثمة بعض السمات التي تسترعي انتباه المطالع لصحيح الإمام أبي عبد الله البخاري :\n * قال النووي: ليس مقصود البخاري الاقتصار على الأحاديث فقط بل مراده الاستنباط منها والاستدلال لأبواب أرادها ولهذا المعنى أخلى كثيراً من الأبواب عن إسناد الحديث واقتصر فيه على قوله فيه فلان عن النبي أو نحو ذلك وقد يذكر المتن بغير إسناد وقد يورده معلَّقاً وإنما يفعل هذا لأنه أراد الاحتجاج للمسألة التي ترجم لها ...\n * لم يستوعب الصحيح ولم يقصد إليه.\n وقال: ما تركت من الصحيح أكثر.\n * قد يكرر الحديث في عدة مواضع يشير في كل منها إلى فائدة مستنبطة.\n * ذكر في تراجم الأبواب آيات وأحاديث وفتاوى الصحابة والتابعين.\n وبعد فهذا غيض من فيض، وسطر من قمطر، ونقطة من بحر، وقليل من كثير من فضل هذا الكتاب العظيم، والسفر الجليل، ولا تكفي هذه العجالة لبيان كنه هذا الكتاب، الذي هو أصح كتاب بعد كتاب الله، بإجماع أهل السنة جميعًا، كيف لا وقد أفرد الحافظ ابن حجر في بداية شرحه للكتاب مجلدًا في الكلام على أسرار هذا الكتاب، فما وفاه حقه وأحس بذلك فصار يذكر مزيدًا على ذلك في أثناء شرحه للنصوص، وكم ترك لغيره من جديد، وإن كان الحافظ رحمه الله هو الملاح الذي أبحر بالسفينة بكل اقتدار.\n\n {التعريف بالكتاب، نقلا عن موقع جامع الحديث}',
      3.5, 123),

  Book('Buku Pintar Drafter Untuk Pemula Hingga Mahir', 'Widada', 'Rp 55.000',
      'img/book2.png','', 4.5, 200),
  Book('Adobe InDesign: Seri Panduan Terlengkap', 'Jubilee Enterprise',
      'Rp 60.000', 'img/book2.png','', 5.0, 324),
  Book('Pemodelan Objek Dengan 3Ds Max 2014', 'Wahana Komputer', 'Rp 58.000',
      'img/book2.png','', 3.0, 200),
  Book('Penerapan Visualisasi 3D Dengan Autodesk Maya', 'Dhani Ariatmanto',
      'Rp 90.000', 'img/book2.png','', 4.8, 234),
  Book('Teknik Lancar Menggunakan Adobe Photoshop', 'Jubilee Enterprise',
      'Rp 57.000', 'img/book2.png','', 4.5, 240),
  Book('Adobe Premiere Terlengkap dan Termudah', 'Jubilee Enterprise',
      'Rp 56.000', 'img/book2.png','', 4.8, 432),
  Book('Cad Series : Google Sketchup Untuk Desain 3D', 'Wahana Komputer',
      'Rp 55.000', 'img/book2.png','', 4.5, 321),
  Book('Webmaster Series : Trik Cepat Menguasai CSS', 'Wahana Komputer',
      'Rp 54.000', 'img/book2.png','', 3.5, 431),
];