#include <stdbool.h>
#include <stdio.h>
#include "raylib.h"
#include "rlgl.h"  // rlPushMatrix, rlPopMatrix 사용을 위해 필요
#include <stdlib.h> // rand(), srand()를 사용하기 위해 필요
#include <time.h>   // 시간 기반으로 난수를 초기화하기 위해 필요

// 함수 원형
void DrawMachine();  // 슬롯머신 그리는 함수
void DrawCly();    // 슬롯 원통 그리는 함수
void DrawBtn();    //슬롯 버튼 그리는 함수
void DrawChar(int a);
int randC1 = 0;
int randC2 = 0;
int randc = 0;

int getRandomNumber() {
    // 랜덤 시드 초기화 (한 번만 수행)
    srand(time(NULL));

    // 97부터 122까지의 수를 반환 (122 - 97 + 1 = 26)
    return (rand() % 26) + 97;
}


int ran(){
    int randomNumber = rand() % 100 + 1;

    return randomNumber;
}

//전역변수
int frameCounter = 0;  // 프레임 카운터
int count = 0;

char slot_A[24] = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','X','T','U','V','W','Z'};
char slot_n[24] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','x','t','u','v','w','z'};

//버튼 클릭 여부
int isClickbtn = 0;
int isSpace = 0;
bool spacePressed = false; // 스페이스 키가 눌렸는지 확인
double spacePressTime = 0.0; // 스페이스 키를 누른 시간을 기록


int j = 1; // 캐릭터 인덱스 초기화
//슬롯머신 애니메이션
Texture2D A_frame[60];




// 색상 설정
Color machine = {55, 35, 46, 255};
Color machine_center = {45,18,33,255};
Color AnA = {186,56,56,255};

int main(void) {
    srand(time(NULL)); // 난수 초기화, 프로그램 시작 시 한 번 호출
//    for (int i = 0; i < 60; i++) {
//        char fileName[70];  // 파일명 버퍼
//        sprintf(fileName, "img/A/A_frame%d.png", i);
//        A_frame[i] = LoadTexture(fileName);  // 해당 파일을 텍스처로 로드
//    }
//    Image image = LoadImage("img/A/A_frame0.png");     // Loaded in CPU memory (RAM)
//    Texture2D texture = LoadTextureFromImage(image);          // Image converted to texture, GPU memory (VRAM)
//    UnloadImage(image);   // Once image has been converted to texture and uploaded to VRAM, it can be unloaded from RAM

//    Texture2D frame = LoadTexture("img/A/A_frame0.png");
    // 창 크기 설정
    const int screenWidth = 800;
    const int screenHeight = 400;

    InitWindow(screenWidth, screenHeight, "2024 AnA 선린제 슬롯머신");

    // 전체화면 모드로 전환
    SetWindowState(FLAG_FULLSCREEN_MODE);

    // 카메라 설정
    Camera camera = { 0 };
    camera.position = (Vector3){ 0.0f, 8.0f, 15.0f };  // 카메라를 위쪽으로 이동
    camera.target = (Vector3){ 0.0f, 0.0f, 0.0f };     // 카메라가 슬롯머신 중심을 바라보도록 설정
    camera.up = (Vector3){ 0.0f, 1.0f, 0.0f };         // 카메라의 상향 벡터
    camera.fovy = 45.0f;                               // 시야각 설정
    camera.projection = CAMERA_PERSPECTIVE;            // 카메라 투영 방식

    SetTargetFPS(60);

    Vector3 lightPosition = { 2.0f, 2.0f, 2.0f };
    Vector3 viewPosition = camera.position;

    // 게임 루프
    while (!WindowShouldClose())    // ESC 키 또는 창 닫기 버튼이 눌리면 종료
    {
        frameCounter++;
        if (frameCounter >= 60) frameCounter = 0;
        // 카메라 업데이트 (자유로운 카메라 모드)
        //UpdateCamera(&camera, CAMERA_FREE);
        // 현재 시간을 얻음
        double currentTime = GetTime();

        // 스페이스 키를 누르고 2초가 지났으면 다시 입력을 받을 수 있도록 함
        if (spacePressed && (currentTime - spacePressTime) >= 2.0) {
            spacePressed = false;
        }

        // 스페이스 키를 눌렀을 때, 이미 눌린 상태가 아니면 처리
        if (!spacePressed && IsKeyPressed(KEY_SPACE)) {
            isSpace++;  // 스페이스 카운트 증가
            spacePressed = true;  // 스페이스 키가 눌렸음을 표시
            spacePressTime = currentTime;  // 스페이스 키를 누른 시간을 기록
        }
        viewPosition = camera.position;

        // 화면 그리기
        BeginDrawing();
        ClearBackground(GRAY);

        BeginMode3D(camera);  // 3D 모드 활성화
        DrawMachine();        // 슬롯머신 그리기
        EndMode3D();  // 3D 모드 비활성화

        //DrawTexture(frame, 0, 0, WHITE);  // 60개의 프레임 중 현재 프레임을 그리기
        //DrawTexture(texture, screenWidth/2 - texture.width/2, screenHeight/2 - texture.height/2, WHITE);    //프레임 이미지 그리기
        if(isSpace >= 1){
            int randomNumber1;
            int randomNumber2;
            int randomNumber3;



            // 프레임마다 j를 증가시킴
            j++;

            // 문자열의 끝에 도달하면 다시 처음으로 돌아감
            if (j >= 22) {
                j = 1;
            }

            if(isSpace <= 1){
                // 슬롯 첫번째
                DrawText(TextFormat("%c", slot_A[j-1]), 765, 250, 90, AnA);
                DrawText(TextFormat("%c", slot_A[j-1]), 760, 300, 90, AnA);
                DrawText(TextFormat("%c", slot_A[j]), 755, 360, 100, AnA);
                DrawText(TextFormat("%c", slot_A[j-1]), 760, 420, 90, AnA);
                DrawText(TextFormat("%c", slot_A[j-1]), 765, 470, 90, AnA);
                DrawText(TextFormat("%c", slot_A[j-1]), 770, 520, 90, AnA);
                randomNumber1 = ran();
            }
            if(isSpace <=2){
                // 슬롯 두번째
                DrawText(TextFormat("%c", slot_n[j-1]), 925, 250, 90, AnA);
                DrawText(TextFormat("%c", slot_n[j-1]), 925, 300, 90, AnA);
                DrawText(TextFormat("%c", slot_n[j]), 925, 360, 100, AnA);
                DrawText(TextFormat("%c", slot_n[j-1]), 925, 420, 90, AnA);
                DrawText(TextFormat("%c", slot_n[j-1]), 925, 470, 90, AnA);
                DrawText(TextFormat("%c", slot_n[j-1]), 925, 530, 90, AnA);
                randomNumber2 = ran();
            }

            if(isSpace <= 3){
                // 슬롯 세번째
                DrawText(TextFormat("%c", slot_A[j-1]), 1090, 250, 90, AnA);
                DrawText(TextFormat("%c", slot_A[j-1]), 1095, 300, 90, AnA);
                DrawText(TextFormat("%c", slot_A[j]), 1100, 360, 100, AnA);
                DrawText(TextFormat("%c", slot_A[j-1]), 1098, 420, 90, AnA);
                DrawText(TextFormat("%c", slot_A[j-1]), 1093, 470, 90, AnA);
                DrawText(TextFormat("%c", slot_A[j-1]), 1088, 520, 90, AnA);
                randomNumber3 = ran();
            }

            //출력
            if(isSpace > 1){
                // 1% 확률로 'A' 출력
                if (randomNumber1 == 99 ) {
                    DrawText("A", 755, 360, 100, AnA);
                }
                else if(randomNumber1 <= 40 && randomNumber1 >0){
                    DrawText("N", 755, 360, 100, AnA);
                }
                else if(randomNumber1 <= 60 && randomNumber1 < 80){
                    DrawText("C", 755, 360, 100, AnA);
                }

                else if (randomNumber1 <= 80){
                    DrawText("R", 755, 360, 100, AnA);

                }
                else {
                    DrawText("0", 755, 360, 100, AnA);
                }
            }
            if(isSpace > 2){

                if (randomNumber2 <= 40 ) {
                    DrawText("n", 925, 360, 100, AnA);
                }
                 else if(randomNumber2 <= 40){
                     DrawText("a", 925, 360, 100, AnA);
                 }
                 else if(randomNumber2 <= 60 && randomNumber2 < 80){
                     DrawText("c", 925, 360, 100, AnA);
                 }
                else if(randomNumber2 <= 80){
                    DrawText("b", 925, 360, 100, AnA);
                }
                else{
                    DrawText("0", 925, 360, 100, AnA);
                }
            }
            if(isSpace > 3){
                // 1% 확률로 'A' 출력
                if (randomNumber3 <= 40) {
                    DrawText("A", 1100, 360, 100, AnA);
                }
                else if(randomNumber3 > 40 && randomNumber3 <= 60){
                    DrawText("B", 1100, 360, 100, AnA);
                }
                 else if(randomNumber3 <= 80){
                     DrawText("C", 1100, 360, 100, AnA);
                 }
                 else if(randomNumber3 <= 80){
                     DrawText("B", 1100, 360, 100, AnA);
                 }
                else{
                    DrawText("0", 1100, 360, 100, AnA);
                }

            }

        }

        if(isSpace == 5){
            isSpace = 0;
            count += 1;
        }

        DrawText("made by C", 10, 10, 30, DARKGRAY);
        //DrawText(solot_A[0],10,20,30,DARKGRAY);


        EndDrawing();
    }

//    for (int i = 0; i < 60; i++) {
//        UnloadTexture(A_frame[i]);
//    }
    CloseWindow();  // 창 닫기

    return 0;
}

// 슬롯머신 그리기
void DrawMachine() {
    // 매트릭스 시작 (변환 시작)
    rlPushMatrix();

    // x축을 기준으로 15도 회전 (기울이기)
    rlTranslatef(0.0f, 0.0f, 0.0f);                      // 큐브 위치 설정
    rlRotatef(-15.0f, 1.0f, 0.0f, 0.0f);                 // X축 기준 15도 회전

    // 몸체 그리기
    DrawCube((Vector3){ 0.0f, 0.0f, 0.0f }, 5.0f, 10.0f, 5.0f, machine_center);
    DrawCubeWires((Vector3){ 0.0f, 0.0f, 0.0f }, 5.0f, 10.0f, 5.0f, BLACK);

    // 매트릭스 끝 (변환 종료)
    rlPopMatrix();

    DrawCly();
    // 선반 그리기 (기울임 없이)
    DrawCube((Vector3){ 0.0f, -0.5f, 3.77f }, 5.0f, 2.0f, 2.5f, machine);
    DrawCubeWires((Vector3){ 0.0f, -0.5f, 3.77f }, 5.0f, 2.0f, 2.5f, BLACK);
    // 뚜껑
    DrawCube((Vector3){ 0.0f, 5.5f, 1.77f }, 5.0f, 0.5f, 1.5f, machine);
    DrawCubeWires((Vector3){ 0.0f, 5.5f, 1.77f }, 5.0f, 0.5f, 1.5f, BLACK);
    DrawBtn();
}

void DrawCly(){
    rlPushMatrix();

// 먼저 원하는 위치로 평행 이동
    rlTranslatef(-2.0f, 3.0f, 1.0f);

// 그 다음 Y축을 기준으로 180도 회전
    rlRotatef(180.0f, 1.0f, 1.0f, 0.0f);

// 원통 그리기 (회전 및 평행 이동 적용 후)
    DrawCylinder((Vector3){ -0.5f, -0.15f, 0.0f }, 2.0f, 2.0f, 1.3f, 60, RAYWHITE);
    //DrawCylinderWires((Vector3){ -0.5f, -0.15f, 0.0f }, 2.0f, 2.0f, 1.3f, 20, BLACK);
    DrawCylinder((Vector3){ -0.5f, -0.15f, 0.0f }, 2.0f, 2.0f, 1.3f, 20, BLACK);
    DrawCylinder((Vector3){ -0.5f, 1.35f, 0.0f }, 2.0f, 2.0f, 1.3f, 60, RAYWHITE);
    //DrawCylinderWires((Vector3){ -0.5f, 1.35f, 0.0f }, 2.0f, 2.0f, 1.3f, 20, BLACK);
    DrawCylinder((Vector3){ -0.5f, 1.35f, 0.0f }, 2.0f, 2.0f, 1.3f, 20, BLACK);
    DrawCylinder((Vector3){ -0.5f, 2.85f, 0.0f }, 2.0f, 2.0f, 1.3f, 60, RAYWHITE);
    DrawCylinder((Vector3){ -0.5f, 2.85f, 0.0f }, 2.0f, 2.0f, 1.3f, 20, BLACK);
    //DrawCylinderWires((Vector3){ -0.5f, 2.85f, 0.0f}, 2.0f, 2.0f, 1.3f, 20, BLACK);



// 원통 와이어프레임 그리기 (주석 해제 시)
    //DrawCylinderWires((Vector3){ 0.0f, 0.0f, 0.0f }, 0.5f, 0.5f, 10.0f, 60, BLACK);

    rlPopMatrix();
}

void DrawBtn(){

    //버튼
    DrawCube((Vector3){1.5f,0.2f,4.0f},1.5f,1.0f, 1.0f,YELLOW);
    DrawCubeWires((Vector3){1.5f,0.2f,4.0f},1.5f,1.0f, 1.0f,BLACK);

    //동그라라미
    DrawSphere((Vector3){0.3f,0.5f,4.2f}, 0.2f, DARKGREEN);
    DrawSphereWires((Vector3){0.3f,0.5f,4.2f}, 0.2f,1, 100,BLACK);
    DrawSphere((Vector3){0.1f,0.5f,3.7f}, 0.2f, DARKBLUE);
    DrawSphereWires((Vector3){0.1f,0.5f,3.7f}, 0.2f,1, 100,BLACK);
    DrawSphere((Vector3){0.5f,0.5f,3.7f}, 0.2f, DARKPURPLE);
    DrawSphereWires((Vector3){0.5f,0.5f,3.7f}, 0.2f,1, 100,BLACK);
}

void DrawChar(int a) {
    if (spacePressed) { // spacePressed가 true일 때만 작동
        // 루프 시작, spacePressed가 true일 동안 계속 작동
        while (spacePressed) {
            static int j = 1; // 캐릭터 인덱스 초기화
            // 프레임 카운터가 60에 도달하면 인덱스를 증가시킴
            if (frameCounter == 60) {
                j++;
                frameCounter = 0; // 프레임 카운터 초기화
            }

            // 문자열의 끝에 도달하면 다시 처음으로 돌아감
            if (j >= 24) {
                j = 0;
            }

            // 문자열 출력 (현재 캐릭터)
            if(a == 1){
                DrawText(&slot_A[j], 10, 10, 20, AnA);
            }
        }
    }
}


