/*
 * fps.h
 *
 *  Created on: 17/06/2012
 *      Author: dev
 */

#ifndef FPS_H_
#define FPS_H_

class Fps {
private:
	int frameCount, fps, previousTime;
public:
	Fps();
	inline int getFps() { return fps; };
	int newFrame();
};

#endif /* FPS_H_ */
