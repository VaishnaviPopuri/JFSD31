<!-- Include html2pdf.js library -->
<%@page import="com.klef.jfsd.springboot.model.Portfolio"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<% 
 Portfolio portfolio = (Portfolio) session.getAttribute("portfolio"); 
if (portfolio == null) {
    response.sendRedirect("studentsessionexpiry");
    return;
}
%>
<!-- Rest of the HTML content remains the same -->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Portfolio View</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        html, body, h1, h2, h3, h4, h5, h6 { font-family: "Roboto", sans-serif; }
    </style>
</head>
<body class="w3-light-grey">

<div class="w3-content w3-margin-top" style="max-width:1400px;">
    <div class="w3-row-padding">
        <!-- Left Column (Profile & Skills) -->
        <div class="w3-third">
            <div class="w3-white w3-text-grey w3-card-4">
                <div class="w3-display-container">
                  <img src="${pageContext.request.contextPath}/displayportfolioimage?username=${portfolio.username}" 
     alt="${portfolio.username}" 
     style="width:100%; height:auto;">
                  

                    <div class="w3-display-bottomleft w3-container w3-text-black">
                        <h2>${portfolio.name}</h2>
                    </div>
                </div>
                <div class="w3-container">
                    <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>${portfolio.jobTitle}</p>
                    <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${portfolio.location}</p>
                    <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${portfolio.email}</p>
                    <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${portfolio.phone}</p>
                    <hr>

                    <!-- Skills Section -->
                    <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
                    <c:if test="${portfolio.skill1 != null}">
                        <p>${portfolio.skill1}</p>
                        <div class="w3-light-grey w3-round-xlarge w3-small">
                            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:${portfolio.skill1Percentage}%">${portfolio.skill1Percentage}%</div>
                        </div>
                    </c:if>
                    <c:if test="${portfolio.skill2 != null}">
                        <p>${portfolio.skill2}</p>
                        <div class="w3-light-grey w3-round-xlarge w3-small">
                            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:${portfolio.skill2Percentage}%">${portfolio.skill2Percentage}%</div>
                        </div>
                    </c:if>
                    <c:if test="${portfolio.skill3 != null}">
                        <p>${portfolio.skill3}</p>
                        <div class="w3-light-grey w3-round-xlarge w3-small">
                            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:${portfolio.skill3Percentage}%">${portfolio.skill3Percentage}%</div>
                        </div>
                    </c:if>
                    <br>

                    <!-- Languages Section -->
                    <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
                    <c:if test="${portfolio.language1 != null}">
                        <p>${portfolio.language1}</p>
                        <div class="w3-light-grey w3-round-xlarge">
                            <div class="w3-round-xlarge w3-teal" style="height:24px;width:${portfolio.language1Level * 10}%"></div>
                        </div>
                    </c:if>
                    <c:if test="${portfolio.language2 != null}">
                        <p>${portfolio.language2}</p>
                        <div class="w3-light-grey w3-round-xlarge">
                            <div class="w3-round-xlarge w3-teal" style="height:24px;width:${portfolio.language2Level * 10}%"></div>
                        </div>
                    </c:if>
                    <c:if test="${portfolio.language3 != null}">
                        <p>${portfolio.language3}</p>
                        <div class="w3-light-grey w3-round-xlarge">
                            <div class="w3-round-xlarge w3-teal" style="height:24px;width:${portfolio.language3Level * 10}%"></div>
                        </div>
                    </c:if>
                    <br>
                </div>
            </div>
            <br>
        </div>

        <!-- Right Column (Education, Work Experience, Projects) -->
        <div class="w3-twothird">
            <!-- Education Section -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16">
                    <i class="fa fa-graduation-cap fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education
                </h2>
                <c:if test="${portfolio.education1 != null}">
                    <div class="w3-container">
                        <h5 class="w3-opacity"><b>${portfolio.education1}</b> (${portfolio.education1Duration})</h5>
                        <p>${portfolio.education1Description}</p>
                        <hr>
                    </div>
                </c:if>
                <c:if test="${portfolio.education2 != null}">
                    <div class="w3-container">
                        <h5 class="w3-opacity"><b>${portfolio.education2}</b> (${portfolio.education2Duration})</h5>
                        <p>${portfolio.education2Description}</p>
                        <hr>
                    </div>
                </c:if>
            </div>

            <!-- Work Experience Section -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work Experience</h2>
                <c:if test="${portfolio.workExperience1 != null}">
                    <div class="w3-container">
                        <h5 class="w3-opacity"><b>${portfolio.workExperience1}</b></h5>
                        <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>${portfolio.workExperience1Duration}</h6>
                        <p>${portfolio.workExperience1Description}</p>
                        <hr>
                    </div>
                </c:if>
                <c:if test="${portfolio.workExperience2 != null}">
                    <div class="w3-container">
                        <h5 class="w3-opacity"><b>${portfolio.workExperience2}</b></h5>
                        <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>${portfolio.workExperience2Duration}</h6>
                        <p>${portfolio.workExperience2Description}</p>
                        <hr>
                    </div>
                </c:if>
            </div>

            <!-- Projects Section -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16">
                    <i class="fa fa-code fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Projects
                </h2>
                <c:if test="${portfolio.project1 != null}">
                    <div class="w3-container">
                        <h5 class="w3-opacity"><b>${portfolio.project1}</b></h5>
                        <p>${portfolio.project1Description}</p>
                        <hr>
                    </div>
                </c:if>
                <c:if test="${portfolio.project2 != null}">
                    <div class="w3-container">
                        <h5 class="w3-opacity"><b>${portfolio.project2}</b></h5>
                        <p>${portfolio.project2Description}</p>
                        <hr>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>

<!-- Button to trigger PDF generation -->
<button class="w3-button w3-teal w3-large" id="downloadBtn">Download PDF</button>
<!-- Back Button -->
<div class="w3-container w3-margin-top">
    <a href="createportfolio" class="w3-button w3-teal w3-round">
        <i class="fa fa-arrow-left"></i> Back
    </a>
</div>


<script>
    document.getElementById("downloadBtn").addEventListener("click", function() {
        var element = document.querySelector(".w3-content");
        var options = {
            margin: 1,
            filename: 'portfolio.pdf',
            html2canvas: { scale: 4 },
            jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
        };
        html2pdf().from(element).set(options).save();
    });
</script>

</body>
</html>
