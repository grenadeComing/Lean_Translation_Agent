import Mathlib

variable {X Y : Type*} [UniformSpace X] [UniformSpace Y] {f : X → Y}

/-- If f is uniformly continuous, then it sends Cauchy sequences to Cauchy sequences. -/
theorem Rudin_exercise_4_11a (hf : UniformContinuous f) {x : ℕ → X} (hx : CauchySeq x) : CauchySeq (f ∘ x) := by sorry
