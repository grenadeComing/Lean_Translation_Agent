import Mathlib

/-- If f : β → α satisfies f (z + w) = f z * f w and f 0 = 1, then f z ≠ 0 for all z. -/
theorem multiplicative_function_ne_zero {β : Type*} [AddGroup β] {α : Type*} [MulZeroClass α] [One α]
  (f : β → α) (hf : ∀ z w, f (z + w) = f z * f w) (h0 : f 0 = 1) : ∀ z, f z ≠ 0 := by sorry
