import Mathlib

open Set Complex

theorem holomorphic_on_nonconstant_is_open_map {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (hne : ¬IsConstantOn f U) : IsOpenMap f := by sorry
