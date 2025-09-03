import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- A map f : X → Y is an open map if the image of every open set is open. -/
def is_open_map (f : X → Y) : Prop :=
  ∀ U : Set X, IsOpen U → IsOpen (f '' U)

/-- The first projection π₁ : X × Y → X is an open map. -/
theorem fst_is_open_map : is_open_map (Prod.fst : X × Y → X) := by sorry

/-- The second projection π₂ : X × Y → Y is an open map. -/
theorem snd_is_open_map : is_open_map (Prod.snd : X × Y → Y) := by sorry
