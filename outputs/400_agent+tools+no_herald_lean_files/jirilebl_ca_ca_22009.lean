import Mathlib

open Complex
open Topology

theorem open_mapping_holomorphic_nonconstant {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hfd : DifferentiableOn ℂ f U)
  (h_nonconst : ∃ z w, z ∈ U ∧ w ∈ U ∧ f z ≠ f w) :
  IsOpenMap (fun x : Subtype U => f x.val) := by sorry
