#include "raylib.h"
//함수 원형
void DrawMachine();  //슬롯머신 그리는 함수

//색상 설정
Color machine = {55,35, 46, 255};

int main(void) {
    // 창 크기 설정
    const int screenWidth = 800;
    const int screenHeight = 400;

    InitWindow(screenWidth, screenHeight, "2024 AnA 선린제 슬롯머신");
    //SetWindowState(FLAG_FULLSCREEN_MODE);
    // 카메라 설정
    Camera camera = { 0 };
    camera.position = (Vector3){ 0.0f, 8.0f, 15.0f };  // 카메라를 위쪽으로 이동 (y=3.0, z=6.0)
    camera.target = (Vector3){ 0.0f, 0.0f, 0.0f };    // 카메라가 직육면체의 중심을 바라보도록 설정
    camera.up = (Vector3){ 0.0f, 1.0f, 0.0f };        // 카메라의 상향 벡터
    camera.fovy = 45.0f;                              // 시야각 설정
//    camera.type = CAMERA_PERSPECTIVE;                 // 원근 투영 설정
//    SetCameraMode(camera, CAMERA_FREE);  // 자유로운 카메라 모드 사용 (입력 없이 고정된 시점)

    // 셰이더 로드
    Shader shader = LoadShader("lighting.vs", "lighting.fs");

    // 셰이더 변수 설정
    int lightPosLoc = GetShaderLocation(shader, "lightPosition");
    int viewPosLoc = GetShaderLocation(shader, "viewPosition");

    Vector3 lightPosition = { 2.0f, 2.0f, 2.0f };
    Vector3 viewPosition = camera.position;

    SetShaderValue(shader, lightPosLoc, &lightPosition, SHADER_UNIFORM_VEC3);
    SetShaderValue(shader, viewPosLoc, &viewPosition, SHADER_UNIFORM_VEC3);

    // 게임 루프
    while (!WindowShouldClose())    // ESC 키 또는 창 닫기 버튼이 눌리면 종료
    {
        //카메라 이동을 위한 입력 처리
        UpdateCamera(&camera, CAMERA_FIRST_PERSON);  // 1인칭 시점 카메라
        viewPosition = camera.position;
        SetShaderValue(shader, viewPosLoc, &viewPosition, SHADER_UNIFORM_VEC3);

        // 화면 그리기
        BeginDrawing();
        ClearBackground(GRAY);

        BeginMode3D(camera);  // 3D 모드 활성화
        DrawMachine();

        EndMode3D();  // 3D 모드 비활성화

        DrawText("3D ", 10, 10, 20, DARKGRAY);

        UnloadShader(shader);    // 셰이더 해제

        EndDrawing();
    }
    CloseWindow();       // 창 닫기

    return 0;
}


void DrawMachine(){

    //몸체 그리기
    DrawCube((Vector3){ 0.0f, 0.0f, 0.0f }, 10.0f, 20.0f, 10.0f, machine);   // (x, y, z), 너비, 높이, 깊이, 색상
    DrawCubeWires((Vector3){ 0.0f, 0.0f, 0.0f}, 5.0f, 10.0f, 5.0f,BLACK);

    //선반 그리기
    DrawCube((Vector3){0.0f, -0.5f, 7.0f}, 10.0f, 4.0f, 5.0f, machine);
    DrawCubeWires((Vector3){0.0f,-0.5f,7.0f}, 10.0f, 4.0f, 5.0f,BLACK);
}