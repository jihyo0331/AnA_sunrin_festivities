#include <stdbool.h>
#include <stdio.h>
#include "raylib.h"
#include "rlgl.h"  // rlPushMatrix, rlPopMatrix 사용을 위해 필요

// 함수 원형
void DrawMachine();  // 슬롯머신 그리는 함수
void DrawCly();    // 슬롯 원통 그리는 함수
void DrawBtn();    //슬롯 버튼 그리는 함수

//전역변수

//버튼 클릭 여부
int isClickbtn = 0;

//슬롯머신 애니메이션
int isRotate = 0;      //슬롯 회전 여부
int clyAngle1 = 0;
int clyAngle2 = 0;
int clyAngle3 = 0;


// 색상 설정
Color machine = {55, 35, 46, 255};
Color machine_center = {45,18,33,255};

int main(void) {
    // 창 크기 설정
    const int screenWidth = 800;
    const int screenHeight = 400;

    InitWindow(screenWidth, screenHeight, "2024 AnA 선린제 슬롯머신");

    // 전체화면 모드로 전환
    //SetWindowState(FLAG_FULLSCREEN_MODE);

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
        // 카메라 업데이트 (자유로운 카메라 모드)
        //UpdateCamera(&camera, CAMERA_FREE);

        viewPosition = camera.position;

        // 화면 그리기
        BeginDrawing();
        ClearBackground(GRAY);

        BeginMode3D(camera);  // 3D 모드 활성화
        DrawMachine();        // 슬롯머신 그리기

        EndMode3D();  // 3D 모드 비활성화

        DrawText("Use W/A/S/D and mouse to move the camera", 10, 10, 20, DARKGRAY);
        DrawText("Press ESC to exit", 10, 30, 20, DARKGRAY);

        EndDrawing();
    }

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