import Mathlib
open Complex
open Matrix

/-- Prove that if the 2 x 2 matrix M represents a complex number a+ib, then M has two eigenvalues: a ± i b with the corresponding eigenvectors [ [1], [∓ i] ]. Save it to: jirilebl_ca_ca_997.lean -/
theorem hasEigenvalues_complex_of_two_by_two_block_diagonal (a b : ℝ) :
    (!![a, -b; b, a]).HasEigenvalues (a + i * b) (a - i * b) := sorry