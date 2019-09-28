using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N00197533_assignment1
{
    public partial class Scubadiving_review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) {

                Page.Validate();

                if (Page.IsValid)
                {
                    scuba_reviewsummary.InnerHtml = "";

                    //Information for variables

                    string Diver_First_Name = diver_first_name.Text; // Not sure if I can take a string variable from a Radio
                    string Diver_Last_Name = diver_last_name.Text;
                    string Diver_email = diver_email.Text;
                    string Oxygen_Apparatus = oxygen_apparatus.Text;
                    string Diving_Equipment = diving_equipment.Text;
                    string Underwater_Gestures = underwater_gestures.Text;
                    int Length_Of_Dive = Convert.ToInt32(length_of_dive.Text);
                    string Dive_Conditions = dive_conditions.Text;
                    string How_Did_You_Hear_About_Us = how_did_you_hear_about_us.Text;
                    string Would_You_Recommend = would_you_recommend.Text;

                    //if statements 

                    if (Oxygen_Apparatus == "Yes")
                    {
                        scuba_reviewsummary.InnerHtml = "Perfect that is a crucial step!";
                    }

                    if (Diving_Equipment == "Yes")
                    {
                        scuba_reviewsummary.InnerHtml = "Awesome!";
                    }

                    if (Underwater_Gestures == "Yes")
                    {
                        scuba_reviewsummary.InnerHtml = "Gotta keep you snd those ears safe!";

                    }

                    if (Length_Of_Dive <= 29)
                    {
                        scuba_reviewsummary.InnerHtml = "Hmm, not that much time. Thats not good";
                    }

                    if (Length_Of_Dive > 60)
                    {
                        scuba_reviewsummary.InnerHtml = "Whoa! that's a long time in the water";
                    }

                    if (Length_Of_Dive >= 30 && Length_Of_Dive <= 60)
                    {
                        scuba_reviewsummary.InnerHtml = "Cool! That's a good amount of time to get your fins wet";
                    }

                    if (Dive_Conditions == "Clean")
                    {
                        scuba_reviewsummary.InnerHtml = "Nothing like diving in crystal clear water";
                    }

                    if (Dive_Conditions == "Somewhat clean")
                    {
                        scuba_reviewsummary.InnerHtml = "Hmm, we'll need to address that";
                    }

                        else
                        {
                            scuba_reviewsummary.InnerHtml = "Oh no! we're so sorry to hear that";
                        }

                    if (Dive_Conditions == "Yes" && Diving_Equipment == "Yes" && Underwater_Gestures == "Yes" && Dive_Conditions == "Clean" && Would_You_Recommend == "Yes")
                    {
                        scuba_reviewsummary.InnerHtml = "This is a 5 star review";
                    }

                }

            }

        } /*  <!-- <Paul Riley> (<2019-09-26>) <RegularExpressionValidator> [<ValidationExpression>]. www.codeproject.com/Articles/3882/ASP-NET-Validators-Unclouded */
          //I also found out via this link "www.youtube.com/watch?v=uokHJ1K90pA" that the same ValidationExpression is generasted in visual studio..I may have missed thst in class
    }
}