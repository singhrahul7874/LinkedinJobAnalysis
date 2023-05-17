document.getElementById("form_control").addEventListener("submit", (e) => {
  e.preventDefault();
});

let data = [];
let text = "";
let team_members = ["ravi", "rahul" , "deeksha" , "aastha"];

document.getElementById("search_btn").addEventListener("click", () => {
  document.getElementById("outer_for_card").innerText = ''
  document.getElementById("outer_div").style.display = 'block';

  let text_value = document.getElementById("text_field").value;
  text = text_value.toUpperCase();

    if(team_members.includes(text.toLowerCase())) {
      alert(`${text} is a Team member not a SKILL !!!`)
    //   document.getElementById("card_data").innerHTML = 'he is  a team member';
      return;
    } else {
      fetchData();
    }

  fetchData();
});

function mode(array) {
  if (array.length == 0) return null;
  var modeMap = {};
  var maxEl = array[0],
    maxCount = 1;
  for (var i = 0; i < array.length; i++) {
    var el = array[i];
    if (modeMap[el] == null) modeMap[el] = 1;
    else modeMap[el]++;
    if (modeMap[el] > maxCount) {
      maxEl = el;
      maxCount = modeMap[el];
    }
  }
  return maxEl;
}

async function fetchData() {
  let res = await fetch("./csvjson.json");
  let converted = await res.json();

  data = [...converted.data];

  displayData(converted.data);
}

function displayData(data) {
  let test = data.filter((elem) => elem[text] && elem[text] === 1);

  if (test.length === 0) {
    alert("please enter a valid skill");
    return;
  }

  renderComponent(test);
}

function renderComponent(filterData) {
  // document.getElementById("outer_div").innerHTML = '';

  let exp = [];
  let classType = [];
  let industry = [];

  filterData.map((elem) => {
    exp.push(elem.Level);
    classType.push(elem.Class);
    industry.push(elem.Industry);
  });

  document.getElementById("most_experience").innerHTML = mode(exp);
  document.getElementById("count").innerHTML = filterData.length;
  document.getElementById("class").innerHTML = mode(classType);
  document.getElementById("industry").innerHTML = mode(industry);

  // filterData.map((elem) =>{

  // })
}


document.getElementById("handleAll").addEventListener("click" , () =>{

  if(text.length === 0) {
    alert("please search for any skill");
    return;
  }
      document.getElementById("outer_div").style.display = 'none';

      let test = data.filter((elem) => elem[text] && elem[text] === 1);

      test.map((elem) =>{

        
        let div = document.createElement("div");
        
        div.innerHTML = `
        <div>
                     <p>Company Name :  <b>${elem.Name}</b></p>
                     <p>Designation : <b>${elem.Designation}</b></p>
                     <p>Location : <b>${elem.Location}</b></p>
                     <p>Industry : <b>${elem.Industry}</b></p>
                     <p class="abs" style="margin-top:0px;">Applicant : ${elem.Total_applicants}</p>
                     <p>Level : <b>${elem.Level}</b></p>
                  </div>`


          document.getElementById("outer_for_card").append(div);
      })

})