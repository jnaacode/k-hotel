const random = Math.floor(Math.random() * 50 + 1); // 1부터 50까지 난수 생성

const btn = document.getElementById("p-udg-btn");

const input = document.getElementById("p-udg-input2");

const ta = document.getElementById('emailMessage');

let count = 0; // 입력한 횟수 저장 변수

ta.innerHTML=random;

/* btn.addEventListener("click", function () {
    inputcheck();
}) */

/* function key(event) {
    if (event.key == "Enter") {
        inputcheck();
    }
} */


function inputcheck() {

    const alll = document.getElementsByClassName("P-udg")[0]

    

    if (isNaN(input.value)) { // 숫자가 아닌 수를 입력할 경우
        alert("숫자를 입력해주세요.");
        input.value = "";
        input.focus();
        return false; // 함수 종료
    } else {
        if (input.value.trim().length == 0) { // 공백 입력한 경우

            input.value = "";
            input.focus();

            ta.innerText = "값을 입력해주세요";

            return false;

        } else {
            ta.innerText = "";
            count++;


            if (count == 5) { // 5번 입력했을 경우
                // function 실행
                alert("기회 5번 모두 소진하였습니다. 게임 실패");
                return true;
            }

            const upDiv = document.createElement("div");
            upDiv.innerText = "---- UP ----"
            const downDiv = document.createElement("div");
            downDiv.innerText = "---- DOWN ----"
            const answerDiv = document.createElement("div");
            answerDiv.innerText = "---- 정답입니다. ----"
            const myDiv = document.createElement("div");
            myDiv.innerText = input.value;
            myDiv.style.fontWeight = "bold";

            alll.append(myDiv);

            if (input.value == random) {
                alert("정답입니다. 쿠폰");


                







                return true;
            }

            if (input.value > random) {
                alll.append(downDiv);
            }

            if (input.value < random) {
                alll.append(upDiv);
            }

            input.value = "";
            input.focus();


            return false;
        }


    }

}
