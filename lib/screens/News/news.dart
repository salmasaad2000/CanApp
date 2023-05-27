import 'package:can/screens/News/artical_details.dart';
import 'package:can/screens/News/artical_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  //ApiService client = ApiService();
  List<Article>? articles = [
    Article(
      author: "Written by Washington University School of Medicine",
      title:
          "Cancer patients who don't respond to immunotherapy lack crucial immune cells",
      description:
          "Cancer immunotherapy involves using activated T cells to destroy tumors, but it doesn't work for all patients. Researchers have discovered that a kind of dendritic cell is crucial for determining the effectiveness of immunotherapy. The discovery could lead to new ways to extend the benefits of immunotherapy to more patients.",
      url: "https://www.sciencedaily.com/releases/2023/02/230216161137.htm",
      image: "assets/images/news1.png",
      publishedAt: "publishedAt ScienceDaily",
      content:
          "Immunotherapy has transformed cancer care. In advanced melanoma, for example, the most fatal form of skin cancer, the five-year survival rate has risen from less than 10% to more than 50% since immunotherapy was introduced in 2011. Still, only about half of melanoma patients respond to immunotherapy, and those who do not respond face a difficult future."
          ' Researchers at Washington University School of Medicine in St. Louis have discovered that the difference between people who do and do not respond to immunotherapy may have to do with an immune cell known as CD5+ dendritic cells because they bear the protein CD5 on their outer surfaces. Their research showed that people with a variety of kinds of cancers, including melanoma, lived longer if they had more CD5+ dendritic cells in their tumors, and that mice that lacked CD5 on their dendritic cells were unable to respond well to immunotherapy.'
          ' The findings, published Feb. 17 in the journal Science, suggest that a supplementary therapy designed to increase the number or activity of CD5+ dendritic cells potentially could extend the lifesaving benefits of immunotherapy to more cancer patients.'
          "Immunotherapy has revolutionized the field of cancer therapy, but there are a lot of patients with cancer who don't benefit from it, said senior author Eynav Klechevsky, PhD, an assistant professor of pathology & immunology and a researcher at Siteman Cancer Center at Barnes-Jewish Hospital and Washington University School of Medicine. Part of the reason some people do not respond well to some forms of immunotherapy is because this population of dendritic cells is reduced dramatically. We're developing some novel immune-based approaches to boost the activation of these CD5-expressing dendritic cells with a goal of helping more patients respond to immunotherapy.",
    ),
    Article(
      author: " Written by Jeff Hansen",
      title:
          "Melanoma treatment: Potential target bypasses therapeutic resistance to immune checkpoint blockers",
      description:
          "Over the last decade, immune checkpoint blockers, or ICBs, have revolutionized treatment for various advanced cancers, including melanoma, the most aggressive skin cancer that was considered largely incurable not long ago. However, three-fourths of advanced-melanoma patients are resistant to ICBs. Now, researchers reveal a potential target -- using the clinically approved drug ruxolitinib -- to suppress ICB-resistant melanomas.",
      url: "https://www.sciencedaily.com/releases/2022/09/220919103203.htm",
      image: "assets/images/news2.png",
      publishedAt: "publishedAt ScienceDaily",
      content:
          "Over the last decade, immune checkpoint blockers, or ICBs, have revolutionized treatment for various advanced cancers, including melanoma, the most aggressive skin cancer that was considered largely incurable not long ago. However, three-fourths of advanced-melanoma patients are resistant to ICBs."
          ' Now, in a report published in Nature Communications, researchers reveal a potential target -- using the clinically approved drug ruxolitinib -- to suppress ICB-resistant melanomas.'
          'Since ruxolitinib is clinically approved and being tested in patients with advanced solid tumors, non-small-cell lung cancer and triple-negative breast cancer, our study justifies further testing of ruxolitinib in patients with advanced melanoma that are resistant to ICBs,said Lewis Zhichang Shi, M.D., Ph.D., an associate professor in the University of Alabama at Birmingham Department of Radiation Oncology.'
          'Shi notes that ruxolitinib will likely need to be combined with other therapeutic modalities to achieve a long-term cure.'
          'For half a dozen years, it was known that tumor loss of interferon-gamma signaling was a major mechanism of resistance against two ICB drugs, anti-CTLA-4 and anti-PD-1. However, ways to overcome this resistance remained elusive.'
          ' This loss of interferon-gamma signaling in human melanomas is caused by dysregulation of genes in the interferon-gamma signaling pathway. However, in mouse models the knockdown mutations failed to show how a loss of interferon-gamma signaling in tumor cells modulated the activity of tumor-infiltrating T cells, or TILs, because those models still contain some interferon-gamma signaling. TIL immune cells are vital for cancer control because they are able to detect and destroy tumors. However, in a countermove, cancers learn to evade this destruction by upping immune checkpoint proteins on the surface of their cells, and these surface proteins send an "off" signal to TILs.'
          "So researchers led by Shi and UAB Department of Radiation Oncology Chair James A. Bonner, M.D., created a cleaner mouse melanoma model by knocking out the receptor gene for interferon-gamma signaling. They used this improved knockout model -- called IFNγR1KO -- to probe the mechanisms of ICB resistance and how the IFNγR1KO melanomas alter the response of TILs to ICBs.",
    ),
    Article(
      author: "Written by H. Lee Moffitt Cancer Center & Research Institute",
      title: "Identifying melanoma patients with high-risk disease",
      description:
          "Medical researchers report on their identification of high-risk patients with stage 3A disease and microscopic lymph node metastases who would benefit from adjuvant therapy",
      url: "https://www.sciencedaily.com/releases/2022/08/220823115454.htm",
      image: "assets/images/news3.png",
      publishedAt: "publishedAt ScienceDaily",

      content:
          'The use of additional adjuvant therapy beyond initial treatment has greatly improved outcomes and reduced the risk of disease recurrence for high-risk patients with melanoma. While there is a consensus regarding the use of adjuvant therapy in many high-risk patients, the use of adjuvant therapy in patients with early stage 3A disease is unclear. In a new study published in the Journal of Clinical Oncology, Moffitt Cancer Center physicians, along with a team of international researchers from eight other cancer centers, report on their identification of high-risk patients with stage 3A disease and microscopic lymph node metastases who would benefit from adjuvant therapy.'
          'Physicians choose therapies for patients with melanoma according to the stage and characteristics of the primary tumor, the presence or absence of metastatic disease that has spread to other sites and other patient characteristics. Stage 3 disease represents patients who have metastatic spread to the local/regional lymph nodes and is commonly treated with either neoadjuvant therapy or upfront surgery followed by adjuvant therapy plus or minus further surgery for high-risk patients or the patients who had neoadjuvant therapy. This stage is heterogeneous and includes stage 3A that has metastases that can be seen only with a microscope, up to stage 3D that involves bulky regional lymph node metastases. Currently, the indications for when to use adjuvant therapy in patients with stage 3 melanoma are more routinely used with higher risk, stage 3B to 3D tumors; however, it is unclear when to recommend adjuvant therapy for patients with stage 3A disease.'
          'A team of researchers from North America, Australia and Europe conducted a study to determine which patients with stage 3A disease were at high risk for poor outcomes and could benefit from adjuvant therapy. They included 3,607 patients in their study who had early-stage primary melanoma and underwent a biopsy of their lymph node closest to their primary tumor, known as the sentinel lymph node. Of these patients, 3,199 were determined to have thinner and earlier stage primary melanoma (stage 1B) tumors that did not have microscopic metastases detected in their sentinel lymph node, while the remaining 408 patients were classified as stage 3A due to the presence of sentinel lymph node microscopic metastases.'
          'The researchers analyzed the survival patterns of the patients with stage 3A disease. They determined that the number of lymph nodes affected with metastases did not have an impact on survival outcomes, but the size of the microscopic metastases did. Patients who had metastases less than 0.3 millimeters had a significantly better survival than patients who had metastases greater than or equal to 0.3 millimeters. The five-year disease-specific survival rate was 94.1% for patients who had metastases less than 0.3 millimeters and 80.3% for patients with metastases greater than or equal to 0.3 millimeters. Similar differences in survival were observed between the groups for overall disease-free survival and distant metastasis-free survival. Furthermore, the researchers determined that the low-risk stage 3A group of patients had similar survival outcomes to patients with stage 1A disease.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8cbed6),
        title: Text(
          "News",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff374c55),
          ),
        ),
      ),

      //Now let's call the APi services with futurebuilder wiget
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff97c6d8),
                      Color(0xff8cbed6),
                      Color(0xcc9bbfcf),
                      Color(0xcc8cbed6),
                    ],
                  ),
                  color: Colors.lightBlue[100],
                ),
                child: ListView.builder(
                  //Now let's create our custom List tile
                  itemCount: articles!.length,
                  itemBuilder: (context, index) =>
                      customListTile(articles![index], context),
                ),

                /* FutureBuilder(
                  future: client.getArticle(

                  ),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Article>> snapshot) {
                    //let's check if we got a response or not
                    if (snapshot.hasData) {
                      //Now let's make a list of articles
                      List<Article>? articles = snapshot.data;
                      return ListView.builder(
                        //Now let's create our custom List tile
                        itemCount: articles!.length,
                        itemBuilder: (context, index) =>
                            customListTile(articles[index], context),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),*/
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Article_details(
            article: article,
          ),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          // color: Color(0xff6abcd7),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              //let's add the height

              image: DecorationImage(
                image: AssetImage(article.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Color(0xff374c55),
              borderRadius: BorderRadius.circular(30.0),
            ),
            /*child: Text(
              article.source.name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),*/
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            article.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    ),
  );
}
