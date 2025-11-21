import Mathlib

universe u v

variable {X : Type u} {Y : Type v}

constant covering_map : (X → Y) → Prop
constant evenly_covered : (X → Y) → Set Y → Prop
constant sheets : (X → Y) → Set Y → WithTop ℕ
constant path_connects : Y → Y → Prop
constant is_open : Set Y → Prop
constant path_connected : Type v → Prop

theorem sheets_constant_along_path {p : X → Y} (hc : covering_map p) {y0 y1 : Y}
  (hpath : path_connects y0 y1) {U V : Set Y} (hU : evenly_covered p U) (hV : evenly_covered p V)
  (h0 : y0 ∈ U) (h1 : y1 ∈ V) : sheets p U = sheets p V := by
  sorry

theorem sheets_constant_on_path_connected_space {p : X → Y} (hc : covering_map p)
  (hY : path_connected Y) :
  ∃ n : WithTop ℕ, ∀ y : Y, ∃ U : Set Y, is_open U ∧ y ∈ U ∧ evenly_covered p U ∧ sheets p U = n := by
  sorry
