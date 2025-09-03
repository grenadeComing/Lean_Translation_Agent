import Mathlib

open Function Set

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] (p : X → Y)

/-- Let p : X → Y be a closed continuous surjective map with compact fibers (a perfect map).
    If Y is compact, then X is compact. -/
theorem perfect_map.compact_of_target_compact
  (hp_cont : Continuous p) (hp_closed : IsClosedMap p) (hp_surj : Function.Surjective p)
  (hp_fib : ∀ y, IsCompact (p ⁻¹' {y})) (hY : IsCompact (univ : Set Y)) : IsCompact (univ : Set X) := by sorry
