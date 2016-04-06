#include "podometerBlock.h"
#include "../../algorithm/podometer/Podometer.h"
#include "../../acquisition/AccelerometerReader.h"
#include "../block.h"
#include <iostream>
#include <vector>
#include "../inputnode.h"
#include "../outputnode.h"

 PodometerBlock::PodometerBlock() : Block()
 {
 }

 PodometerBlock::~PodometerBlock()
 {
 }

void PodometerBlock::work()
{
    // out = podometer.getStepCount();
    std::cout<<"WORKING ON PODOMETER!\n";

    //How it should be implemented
    //vector<SensorDataPerDay> accelerometerData = Block::GetInput("input1")->Get();

    //To be deleted
    AccelerometerReader accReader("C:\\Users\\autum\\Documents\\OpenIMU\\data wimu2\\21");
    accReader.LoadSensorData(false);

    vector<SensorDataPerDay> accelerometerData = accReader.GetAccelerometerData();

    Podometer podometer;
    podometer.execute(accelerometerData);
    int podo[] = {podometer.getStepCount()};
    Block::GetOutput("output1")->Send(podo);
}
