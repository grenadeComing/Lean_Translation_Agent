import Mathlib

/-!
# Munkres exercise 17.4

Show that if `U` is open in `X` and `A` is closed in `X`, then `U \ A` is open in `X`, and `A \ U` is closed in `X`.
-/

variable {X : Type _} [TopologicalSpace X]

/-- If `U` is open and `A` is closed then `U \ A` is open. -/
theorem isOpen_diff_of_open_closed {U A : Set X} (hU : IsOpen U) (hA : IsClosed A) : IsOpen (U \ A) := by
  -- `U \ A = U ∩ Aᶜ`, and `A` closed implies `Aᶜ` is open; intersection of opens is open.
  sorry

/-- If `U` is open and `A` is closed then `A \ U` is closed. -/
theorem isClosed_diff_of_open_closed {U A : Set X} (hU : IsOpen U) (hA : IsClosed A) : IsClosed (A \ U) := by
  -- `A \ U = A ∩ Uᶜ`, and `U` open implies `Uᶜ` is closed; intersection of closed sets is closed.
  sorry
