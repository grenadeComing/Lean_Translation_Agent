import Mathlib
open scoped Real
open Topology Filter Set
open Lean.Meta Qq
open Real
open Real NNReal
open Real

/-- Let z ∈ ℂ. Prove that | sin z | ≤ (1 / 2) * e^{|z|} and | cos z | ≤ (1 / 2) * e^{|z|}. -/
lemma abs_sin_le_tac_57198 (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1 / 2) * Real.exp (Complex.abs z)  :=  by sorry