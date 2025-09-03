import Mathlib

/-!
Show that every order topology is regular:
If α is a linear order with the order topology then α is a regular_space.
-/

variable {α : Type*} [LinearOrder α] [TopologicalSpace α] [OrderTopology α]

theorem order_topology_regular : RegularSpace α := by sorry
