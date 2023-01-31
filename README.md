## License

Copyright (c) 2022, Ivan Fernandez-Corbaton, Roland Griesmaier, Marvin Knöller, Carsten Rockstuhl

This software is released under GNU General Public License, Version 3.
The full license text is provided in the file LICENSE included in this repository 
or can be obtained from http://www.gnu.org/licenses/

## Content of this project
This is a guide to generate the figures that have been used in the work

**„Maximizing the electromagnetic chirality of thin metallic nanowires at optical frequencies“**

_By Ivan Fernandez-Corbaton, Roland Griesmaier, Marvin Knöller and Carsten Rockstuhl._

You find all the needed Matlab files in the folders.

## An overview
- [ ] The folder **AuxiliaryScripts** includes
    - several auxiliary files for the numerical examples 1,2,3 in the folders Ex1, Ex2, Ex3,
    - 	_DoubleReflectionFrame_ a function that approximates a rotation minimizing frame
    - 	_GenerateEllipticScattererNew_ a function that visualizes the 3d scatterer and further returns a .geo file if necessary.

- [ ] The folder **AuxiliaryUtilities** includes
    - two text files that include the material parameters for silver and gold
    - _dotReal_ evaluates dot product
    - _eval_phi_ evaluates the aim functional
    - _geteps_gold_ gets the material parameter for gold given the wavelength
    - _geteps_ gets the material parameter for silver given the wavelength
    - _Tensor_Mat_Mult_ multiplies two tensors along the third dimension

- [ ] The folder **ChiralityUtilities** includes
    - _chiral_ function to evaluate the rel. chirality measure
    - two functions that approximate the far field operator based on the leading order term of the asymptotic perturbation formula (one allows to change eps_rel in the argument)

- [ ] The folder **Derivatives** includes
    - _Der_Curvature_Constraint_ derivative of the first penalty term
    - _Der_Seg_Pen2_ derivative of the second penalty term
    - _DerFarFieldMatrixFunction_SplineRotationRMF_ derivative of far field operator w.r.t rotation
    - _derive_farfieldmatrix_SplineRotationRMFFD_ derivative of far field operator w.r.t spine curve
    - _derive_measure_ derivative of rel. chirality measure
    - _derPnPdashbP_ derivative of the third penalty term w.r.t. spine curve
    - _derThetanPdashbP_ derivative of the third penalty term w.r.t. rotation
    - _DiffEntireWaveField_ derivative of the entire wave fields
    - _eval_Gradf_ derivative of the aim functional

- [ ] The folder **Penalties** includes
    - _Curvature_Constraint_ the first penalty term
    - _CurvePenalty_ essentially to evaluate the length of a curve
    - _SegPen2_ the second penalty term
    - _nPdashbP_ the third penalty term

- [ ] The folder **PrecomputedResults** includes
The results from the numerical examples 1,2,3. You get these results (except for the third one due to randomness
by running the scripts Paper_Ex1, Paper_Ex2, Paper_Ex3. For the third numerical example, we provide in the 	folder ResultsEx3 the samples that we used in our publication. 
In order to re-simulate these examples from scratch, please consider the remarks in the file Paper_Ex3.m

- [ ] The folders **Samples*** are empty. If you run Paper_Ex3, then all the results are saved in the corresponding folders.
- [ ] The folder **SplineUtilities** includes all routines to generate cubic splines in the way they are needed for the other programs 
- [ ] The folder **Straights** is empty. The results from Paper_Ex1 are saved in this folder.

For generating the numerical examples 1-3, run

- Paper_Ex1
- Paper_Ex2
- Paper_Ex3

**For the third example, we further provide the samples that we used in our publication. Consider the remarks in Paper_Ex3 for re-simulating them.**

## Requirements and additional information
The computations from example 1,2 have been carried out on a MacBook Pro 15“ model from 2018 
Computations have been carried out using the Matlab 2020a version.
Running both of these examples from scratch takes 1-2 days.

The simulations in example 3 have been carried out on clusters using 32 or 64 cores.
Computations have been carried out using the Matlab 2018a version.
Running one simulation (e.g. Example3_400THz.m) takes 8-10 days. 

The code uses parallelization from the Matlab Parallelization Toolbox.
The code requires the Maxwell_VSH Toolbox (see https://git.scc.kit.edu/ianmip-software/maxwell-vsh).
