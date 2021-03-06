document.addEventListener("turbolinks:load", function() {
  indexShow();
  showDay();
  createDay();
})

function indexShow() {
  $(".js-more").on("click", function() {
      var id = $(this).data("id");
      $.get("/days/" + id + ".json", function(response) {
          var dayFocus = response["day_focus"];
          var dayExercise = response["day_exercise"];
          var hour = response["hours"].map(function (hour) {
            return hour["hour_number"] + ": "});
          var task = response["tasks"].map(function (task) {
            return task["task_content"]});
          var hourwithtask = hour.map(function(e, i) {
            return "<li>" + e + task[i] + "</li>"}).join('');
          var dayText = "<p> Focus: "+ dayFocus + "</p><p> Exercise: " + dayExercise + "</p><ul>" + hourwithtask + "</ul>" ;//
          $("#day-" + id).html(dayText);
      });
  });
}


function showDay() {
  $(".js-next").on("click", function() {
     $(".test").hide();
     var nextId = parseInt($(".js-next").attr("data-id")) + 1;
     $.get("/days/" + nextId + ".json", function(data) {
       $(".dayDayDate").text(data["day_day_date"]);
       $(".dayGrateful1").text(data["day_grateful_1"]);
       $(".dayGrateful2").text(data["day_grateful_2"]);
       $(".dayGrateful3").text(data["day_grateful_3"]);
       $(".dayExcited1").text(data["day_excited_1"]);
       $(".dayExcited2").text(data["day_excited_2"]);
       $(".dayExcited3").text(data["day_excited_3"]);
       $(".dayAffirmation").text(data["day_affirmation"]);
       $(".dayFocus").text(data["day_focus"]);
       $(".dayExercise").text(data["day_exercise"]);
       $(".dayPriority1").text(data["day_priority_1"]);
       $(".dayPriority2").text(data["day_priority_2"]);
       $(".dayPriority3").text(data["day_priority_3"]);
       $(".dayPriority4").text(data["day_priority_4"]);
       $(".dayPriority5").text(data["day_priority_5"]);
        var hour = data["hours"].map(function (hour) {
          return hour["hour_number"] + ": "});
        var task = data["tasks"].map(function (task) {
          return task["task_content"]});
        var hourwithtask = hour.map(function(e, i) {
          return e + task[i] + "<br>"}).join('');
        
        var dayText = hourwithtask;
        $(".hourTask").html(hourwithtask);
       $(".dayTask1").text(data["day_task_1"]);
       $(".dayTask2").text(data["day_task_2"]);
       $(".dayTask3").text(data["day_task_3"]);
       $(".dayTask4").text(data["day_task_4"]);
       $(".dayTask5").text(data["day_task_5"]);
       $(".dayTask6").text(data["day_task_6"]);
       $(".dayTask7").text(data["day_task_7"]);
       $(".dayTask8").text(data["day_task_8"]);
       $(".dayTask9").text(data["day_task_9"]);
       $(".dayTask10").text(data["day_task_10"]);
       $(".dayNotes").text(data["day_notes"]);
       $(".dayWin1").text(data["day_win_1"]);
       $(".dayWin2").text(data["day_win_2"]);
       $(".dayWin3").text(data["day_win_3"]);
       $(".dayImprovement").text(data["day_improvement"]);
       // re-set the id to current on the link
       $(".js-next").attr("data-id", data["id"]);
     });
   });
}


function createDay() {    
  $("#newday").on("submit", function(event) {
    
    event.preventDefault();
    const data = $(this).serialize();
    $.ajax({
      type: "POST",
      data: data,
      dataType: "json",
      url: "/days",
      success: function(res) {
        let newDay = new Day(res.day_day_date, res.user_id, res.day_grateful_1, res.day_grateful_2, res.day_grateful_3, res.day_excited_1, res.day_excited_2, res.day_excited_3, res.day_affirmation, res.day_focus, res.day_exercise, res.day_priority_1, res.day_priority_2, res.day_priority_3, res.day_priority_4, res.day_priority_5, res.day_task_1, res.day_task_2, res.day_task_3, res.day_task_4, res.day_task_5, res.day_task_6, res.day_task_7, res.day_task_8, res.day_task_9, res.day_task_10, res.day_notes, res.day_win_1, res.day_win_2, res.day_win_3, res.day_improvement, res.tasks = []);
        let returnDayDate = newDay.dayDate();
        $("#dayDayDate").append(returnDayDate);
        $("#dayImprovement").text(newDay["day_improvement"]);
        
      }
    });
  });  
 
};


class Day {
  constructor(day_day_date, user_id, day_grateful_1, day_grateful_2, day_grateful_3, day_excited_1, day_excited_2, day_excited_3, day_affirmation, day_focus, day_exercise, day_priority_1, day_priority_2, day_priority_3, day_priority_4, day_priority_5, day_task_1, day_task_2, day_task_3, day_task_4, day_task_5, day_task_6, day_task_7, day_task_8, day_task_9, day_task_10, day_notes, day_win_1, day_win_2, day_win_3, day_improvement, tasks = []){
    this.day_day_date = day_day_date;
    this.user_id = user_id; 
      this.day_grateful_1 = day_grateful_1; 
      this.day_grateful_2 = day_grateful_2;
      this.day_grateful_3 = day_grateful_3;
      this.day_excited_1 = day_excited_1;
      this.day_excited_2 = day_excited_2;
      this.day_excited_3 = day_excited_3;
      this.day_affirmation = day_affirmation;
      this.day_focus = day_focus;
      this.day_exercise = day_exercise;
      this.day_priority_1 = day_priority_1;
      this.day_priority_2 = day_priority_2;
      this.day_priority_3 = day_priority_3;
      this.day_priority_4 = day_priority_4;
      this.day_priority_5 = day_priority_5;
      this.day_task_1 = day_task_1;
      this.day_task_2 = day_task_2;
      this.day_task_3 = day_task_3;
      this.day_task_4 = day_task_4;
      this.day_task_5 = day_task_5;
      this.day_task_6 = day_task_6;
      this.day_task_7 = day_task_7;
      this.day_task_8 = day_task_8;
      this.day_task_9 = day_task_9;
      this.day_task_10 = day_task_10;
      this.day_notes = day_notes;
      this.day_win_1 = day_win_1;
      this.day_win_2 = day_win_2;
      this.day_win_3 = day_win_3;
      this.day_improvement = day_improvement;
      this.tasks = tasks;
  };

  dayDate() {
    return "Your day, " + this.day_day_date + ", has been created!";
  }
}

//function Day(day_day_date, user_id, day_grateful_1) {
//  this.day_day_date = day_day_date;
//  this.user_id = user_id; 
//  this.day_grateful_1 = day_grateful_1;
//}//

//Day.prototype.dayDate = function() {
//  return "Your day, " + this.day_day_date + ", has been created!";
//}