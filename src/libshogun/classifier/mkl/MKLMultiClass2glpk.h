/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 2009 Alexander Binder
 * Copyright (C) 2009 Fraunhofer Institute FIRST and Max-Planck-Society
 */

#ifndef MKLMULTICLASS2GLPK_H_
#define MKLMULTICLASS2GLPK_H_

#include <vector>

#include "base/SGObject.h"

#ifdef USE_GLPK
#include <glpk.h>
#endif
/** @brief MKLMultiClass2glpk is a helper class for MKLMultiClass. 
*
*	it solves the corresponding linear problem arising in SIP formulation for MKL using glpk
*
*/
namespace shogun
{
class MKLMultiClass2glpk: public CSGObject
{
public:
	

	MKLMultiClass2glpk();
	virtual ~MKLMultiClass2glpk();
	
	/** initializes GLPK LP sover 
	 *
	 * @param numkernels2 is the number of kernels
	 * 
	 * 
	 */
	virtual void setup(const int32_t numkernels2); 

	/** adds a constraint to the LP arising in L1 MKL based on two parameters
	 *
	 * @param normw2 is the vector of \f$ \|w_k \|^2 \f$ for all kernels
	 * @param sumofpositivealphas is a term depending on alphas, labels and biases, see in the function float64_t getsumofsignfreealphas() from MKLMultiClass.h, it depends on the formulation of the underlying GMNPSVM.
	 * 
	 */
	virtual void addconstraint(const ::std::vector<float64_t> & normw2,
			const float64_t sumofpositivealphas); 

	/** computes MKL weights
	 *
	 * @param weights2 stores the new weights
	 * 
	 */
	virtual void computeweights(std::vector<float64_t> & weights2); 

	/** @return object name */
	inline virtual const char* get_name() const { return "MKLMultiClass2glpk"; }

protected:
	///prohibits copying the copy constructor by declaring it protected, do not know how to copy the glpk basis structure, it is too C like :) and seemingly not intended to be copied 
	MKLMultiClass2glpk( MKLMultiClass2glpk & gl);
	MKLMultiClass2glpk operator=( MKLMultiClass2glpk & gl);

protected:
	/** stores the number of kernels which acts as a parameter for the LP
	*
	*/
	int32_t numkernels;
	/** GLPK data structure, is not defined in the case #ifndef USE_GLPK
	*
	*/
	#ifdef USE_GLPK
	glp_prob* linearproblem;
	#endif
};	
}

#endif